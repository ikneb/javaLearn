package net.devstudy.resume.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import net.devstudy.resume.component.DataBuilder;
import net.devstudy.resume.entity.Account;
import net.devstudy.resume.entity.AccountRestore;
import net.devstudy.resume.exception.CantCompleteClientRequestException;
import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.repository.storage.AccountRestoreRepository;
import net.devstudy.resume.service.FindAccountService;
import net.devstudy.resume.service.NotificationManagerService;
import net.devstudy.resume.util.SecurityUtil;

@Service
public class FindAccountServiceImpl implements FindAccountService,UserDetailsService {
	private static final Logger LOGGER = LoggerFactory.getLogger(FindAccountServiceImpl.class);
	@Autowired
	private AccountSearchRepository accountSearchRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	AccountRestoreRepository accountRestoreRepository;
	
	@Autowired
	NotificationManagerService notificationManagerService;

	@Override
	public Account findByUid(String uid) {
		return accountRepository.findByUid(uid);
	}
	
	@Autowired
	protected DataBuilder dataBuilder;

	@Value("${app.host}")
	private String appHost;


	@Override
	public Page<Account> findAllByCompletedTrue(Pageable pageable) {

		return accountRepository.findAllByCompletedTrue(pageable);
	}

	@Override
	public Page<Account> findAll(Pageable pageable) {
		return accountRepository.findAll(pageable);
	}

	@Override
	@Transactional
	public Iterable<Account> findAllForIndexing() {
		Iterable<Account> all = accountRepository.findAll();
		 		for(Account p : all) {
		 			p.getSkills().size();
		 			p.getCertificates().size();
		 			p.getLanguages().size();
		 			p.getPractics().size();
		 			p.getCourses().size();
		 		}
		 		return all;
		
	}

	@Override
	public Page<Account> findBySearchQuery(String query, Pageable pageable) {
		return accountSearchRepository.findByObjectiveLikeOrSummaryLikeOrPracticsCompanyLikeOrPracticsPositionLike(
				 				query, query, query, query, pageable);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = findAccount(username);
		if (account != null) {
			return new CurrentAccount(account);
		} else {
			LOGGER.error("Account not found by " + username);
			throw new UsernameNotFoundException("Account not found by " + username);
		}
	}
	
	private Account findAccount(String anyUnigueId) {
		Account account = accountRepository.findByUid(anyUnigueId);
		if (account == null) {
			account = accountRepository.findByEmail(anyUnigueId);
			if (account == null) {
				account = accountRepository.findByPhone(anyUnigueId);
			}
		}
		return account;
	}
	
	@Override
	@Transactional
	public void restoreAccess(String anyUnigueId) {
		Account account = accountRepository.findByUidOrEmailOrPhone(anyUnigueId, anyUnigueId, anyUnigueId);
		if (account != null) {
			AccountRestore restore = accountRestoreRepository.findByAccountId(account.getId());
			if (restore == null) {
				restore = new AccountRestore();
				restore.setAccount(account);
			}
			restore.setId(account.getId());
			restore.setToken(SecurityUtil.generateNewRestoreAccessToken());
			accountRestoreRepository.save(restore);
			sentRestoreLinkNotificationIfTransactionSuccess(account, restore);
		} else {
			LOGGER.error("Profile not found by anyIdAcount:" + anyUnigueId);
		}
	}
	
	protected void sentRestoreLinkNotificationIfTransactionSuccess(final Account account, AccountRestore restore){
		final String restoreLink = dataBuilder.buildRestoreAccessLink(appHost, restore.getToken());
		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
			
			public void afterCommit() {
				notificationManagerService.sendRestoreAccessLink(account, restoreLink);
			}
		});
	}

	@Override
	@Transactional
	public Account findByRestoreToken(String token) {
		AccountRestore restore = accountRestoreRepository.findByToken(token);
		if (restore == null) {
			throw new CantCompleteClientRequestException("Invalid token");
		}
		accountRestoreRepository.delete(restore);
		return restore.getAccount();
	}
}
