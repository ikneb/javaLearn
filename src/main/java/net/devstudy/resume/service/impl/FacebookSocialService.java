package net.devstudy.resume.service.impl;

import java.util.Collections;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import com.restfb.types.User;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.exception.CantCompleteClientRequestException;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.service.SocialService;
import net.devstudy.resume.util.DataUtil;

@Service
@SuppressWarnings("unchecked")
public class FacebookSocialService implements SocialService<User> {
	private static final Logger LOGGER = LoggerFactory.getLogger(FacebookSocialService.class);

	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private AccountSearchRepository accountSearchRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Value("${generate.uid.suffix.length}")
	private int generateUidSuffixLength;

	@Value("${generate.uid.alphabet}")
	private String generateUidAlphabet;

	@Value("${generate.uid.max.try.count}")
	private int maxTryCountToGenerateUid;
	
	@Override
	@Transactional
	public Account loginViaSocialNetwork(User model) {
		if(StringUtils.isNotBlank(model.getEmail())) {
			Account account = accountRepository.findByEmail(model.getEmail());
			if(account != null){
				return account;
			}
		}
		Account account = new Account();
		account.setUid(generateAccountUid(model));
		account.setFirstName(DataUtil.capitalizeName(model.getFirstName()));
		account.setLastName(DataUtil.capitalizeName(model.getLastName()));
		account.setEmail(model.getEmail());
		account.setPassword(passwordEncoder.encode("1111"));
		account.setCompleted(false);
		accountRepository.save(account);
		registerCreateIndexAccountIfTrancationSuccess(account);
		return account;
	}
	
	private void registerCreateIndexAccountIfTrancationSuccess(final Account account) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("New account created: {}", account.getUid());
 				account.setCertificates(Collections.EMPTY_LIST);
 				account.setPractics(Collections.EMPTY_LIST);
 				account.setLanguages(Collections.EMPTY_LIST);
 				account.setSkills(Collections.EMPTY_LIST);
 				account.setCourses(Collections.EMPTY_LIST);
 				accountSearchRepository.save(account);
 				LOGGER.info("New account index created: {}", account.getUid());
 			}
 		});
 }
	private String generateAccountUid(User user) throws CantCompleteClientRequestException {
		String baseUid = DataUtil.generateAccountUidFaceBook(user);
		String uid = baseUid;
		for (int i = 0; accountRepository.countByUid(uid) > 0; i++) {
			uid = DataUtil.regenerateUidWithRandomSuffix(baseUid, generateUidAlphabet, generateUidSuffixLength);
			if (i >= maxTryCountToGenerateUid) {
				throw new CantCompleteClientRequestException("Can't generate unique uid for account: " + baseUid+": maxTryCountToGenerateUid detected");
			}
		}
		return uid;
	}

}