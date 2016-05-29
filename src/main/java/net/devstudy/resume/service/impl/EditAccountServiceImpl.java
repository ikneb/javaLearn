package net.devstudy.resume.service.impl;

import java.util.Collections;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.entity.Certificate;
import net.devstudy.resume.entity.Contact;
import net.devstudy.resume.entity.Course;
import net.devstudy.resume.entity.Education;
import net.devstudy.resume.entity.Hobby;
import net.devstudy.resume.entity.Language;
import net.devstudy.resume.entity.Practic;
import net.devstudy.resume.entity.Skill;
import net.devstudy.resume.entity.SkillCategory;
import net.devstudy.resume.exception.CantCompleteClientRequestException;
import net.devstudy.resume.form.SignUpForm;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.repository.storage.SkillCategoryRepository;
import net.devstudy.resume.service.EditAccountService;
import net.devstudy.resume.util.DataUtil;

@Service
@SuppressWarnings("unchecked")
public class EditAccountServiceImpl implements EditAccountService {
	private static final Logger LOGGER = LoggerFactory.getLogger(EditAccountServiceImpl.class);

	@Autowired
	private AccountSearchRepository accountSearchRepository;
	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
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
	public Account createNewAccount(SignUpForm signUpForm) {
		Account account = new Account();
		account.setUid(generateAccountUid(signUpForm));
		account.setFirstName(DataUtil.capitalizeName(signUpForm.getFirstName()));
		account.setLastName(DataUtil.capitalizeName(signUpForm.getLastName()));
		account.setPassword(passwordEncoder.encode(signUpForm.getPassword()));
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

	
	private String generateAccountUid(SignUpForm signUpForm) throws CantCompleteClientRequestException {
		String baseUid = DataUtil.generateAccountUid(signUpForm);
		String uid = baseUid;
		for (int i = 0; accountRepository.countByUid(uid) > 0; i++) {
			uid = DataUtil.regenerateUidWithRandomSuffix(baseUid, generateUidAlphabet, generateUidSuffixLength);
			if (i >= maxTryCountToGenerateUid) {
				throw new CantCompleteClientRequestException("Can't generate unique uid for account: " + baseUid+": maxTryCountToGenerateUid detected");
			}
		}
		return uid;
	}
	
	@Override
	public List<Skill> listSkills(long idAccount) {
		return accountRepository.findOne(idAccount).getSkills();
	}

	@Override
	public List<SkillCategory> listSkillCategories() {
		return skillCategoryRepository.findAll(new Sort("id"));
	}

	@Override
	public List<Hobby> listHobbies(long idAccount) {
		return accountRepository.findOne(idAccount).getHobbies();
	}

	@Override
	public List<Language> listLanguages(long idAccount) {
		return accountRepository.findOne(idAccount).getLanguages();
	}

	@Override
	public List<Course> listCourses(long idAccount) {
		return accountRepository.findOne(idAccount).getCourses();
	}

	@Override
	public List<Certificate> listCertificates(long idAccount) {
		return accountRepository.findOne(idAccount).getCertificates();
	}

	@Override
	public List<Education> listEducation(long idAccount) {
		return accountRepository.findOne(idAccount).getEducations();
	}

	@Override
	public Contact contacts(long idAccount) {
		return accountRepository.findOne(idAccount).getContacts();
	}

	@Override
	public List<Practic> listPractics(long idAccount) {
		return accountRepository.findOne(idAccount).getPractics();
	}

	@Override
	public Account account(long idAccount) {
		return accountRepository.findOne(idAccount);
	}
	@Override
	@Transactional
	public void updateAccount(long idAccount,Account accountForm){
		Account account = accountRepository.findOne(idAccount);
		account.setBirthDay(accountForm.getBirthDay());
		account.setCountry(accountForm.getCountry());
		account.setCity(accountForm.getCity());
		account.setEmail(accountForm.getEmail());
		account.setPhone(accountForm.getPhone());
		account.setObjective(accountForm.getObjective());
		account.setSummary(accountForm.getSummary());
		accountRepository.save(account);
		registerUpdateIndexAccountIfTransactionSuccess(idAccount, account);
	}
	private void registerUpdateIndexAccountIfTransactionSuccess(final long idAccount, final Account account) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account  updated");
 				updateIndexAccount(idAccount, account);
 			}
 		});
 	}
	private void updateIndexAccount(long idAccount, Account account) {
		accountSearchRepository.save(account);
 		LOGGER.info("Account  index updated");
 	}
	
	@Override
	@Transactional
	public void updateContact(long idAccount, Contact contact){
		Account account = accountRepository.findOne(idAccount);
		account.setContacts(contact);
		accountRepository.save(account);
		registerUpdateIndexContactIfTransactionSuccess( idAccount,  contact);
	}
	private void registerUpdateIndexContactIfTransactionSuccess(final long idAccount, final Contact contact) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account contacts updated");
 				updateIndexAccountContacts(idAccount, contact);
 			}
 		});
 	}
	private void updateIndexAccountContacts(long idAccount, Contact contact) {
		Account account = accountSearchRepository.findOne(idAccount);
		account.setContacts(contact);
		accountSearchRepository.save(account);
 		LOGGER.info("Account contacts index updated");
 	}
	
	
	
	@Override
	@Transactional
	public void updateSkills(long idAccount, List<Skill> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getSkills())) {
			LOGGER.debug("Account skills: nothing to update");
			return;
		} else {
			account.setSkills(updatedData);
			accountRepository.save(account);
			registerUpdateIndexAccountSkillsIfTransactionSuccess(idAccount, updatedData);
		}
	}
	
	private void registerUpdateIndexAccountSkillsIfTransactionSuccess(final long idAccount, final List<Skill> updatedData) {
		 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
		 			@Override
		 			public void afterCommit() {
		 				LOGGER.info("Account skills updated");
		 				updateIndexAccountSkills(idAccount, updatedData);
		 			}
		 		});
		 	}
		 
		 	private void updateIndexAccountSkills(long idAccount, List<Skill> updatedData) {
		 		Account account = accountSearchRepository.findOne(idAccount);
		 		account.setSkills(updatedData);
		 		accountSearchRepository.save(account);
		 		LOGGER.info("Account skills index updated");
		 	}
	
	@Override
	@Transactional
	public void updateHobbies(long idAccount, List<Hobby> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getHobbies())) {
			LOGGER.debug("Account hobbies: nothing to update");
			return;
		} else {
			account.setHobbies(updatedData);
			accountRepository.save(account);
		}
		
	}

	@Override
	@Transactional
	public void updateLanguages(long idAccount, List<Language> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getLanguages())) {
			LOGGER.debug("Account languages: nothing to update");
			return;
		} else {
			account.setLanguages(updatedData);
			accountRepository.save(account);
			registerUpdateIndexAccountLanguagesIfTransactionSuccess(idAccount, updatedData);
		}
		
	}
	
	private void registerUpdateIndexAccountLanguagesIfTransactionSuccess(final long idAccount, final List<Language> updatedData) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account languages updated");
 				updateIndexAccountLanguages(idAccount, updatedData);
 			}
 		});
 	}
 
 	private void updateIndexAccountLanguages(long idAccount, List<Language> updatedData) {
 		Account account = accountSearchRepository.findOne(idAccount);
 		account.setLanguages(updatedData);
 		accountSearchRepository.save(account);
 		LOGGER.info("Account languages index updated");
 	}

	@Override
	@Transactional
	public void updateCourses(long idAccount, List<Course> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getCourses())) {
			LOGGER.debug("Account courses: nothing to update");
			return;
		} else {
			account.setCourses(updatedData);
			accountRepository.save(account);
			registerUpdateIndexAccountCoursesIfTransactionSuccess( idAccount, updatedData);
		}
		
	}
	private void registerUpdateIndexAccountCoursesIfTransactionSuccess(final long idAccount, final List<Course> updatedData) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account courses updated");
 				updateIndexAccountCourses(idAccount, updatedData);
 			}
 		});
 	}
 
 	private void updateIndexAccountCourses(long idAccount, List<Course> updatedData) {
 		Account account = accountSearchRepository.findOne(idAccount);
 		account.setCourses(updatedData);
 		accountSearchRepository.save(account);
 		LOGGER.info("Account courses index updated");
 	}

	@Override
	@Transactional
	public void updateCertificates(long idAccount, List<Certificate> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getCertificates())) {
			LOGGER.debug("Account certificates: nothing to update");
			return;
		} else {
			account.setCertificates(updatedData);
			accountRepository.save(account);
			registerUpdateIndexAccountCertificatesIfTransactionSuccess(idAccount,updatedData);
		}
		
	}
	private void registerUpdateIndexAccountCertificatesIfTransactionSuccess(final long idAccount, final List<Certificate> updatedData) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account certificates updated");
 				updateIndexAccountCertificates(idAccount, updatedData);
 			}
 		});
 	}
 
 	private void updateIndexAccountCertificates(long idAccount, List<Certificate> updatedData) {
 		Account account = accountSearchRepository.findOne(idAccount);
 		account.setCertificates(updatedData);
 		accountSearchRepository.save(account);
 		LOGGER.info("Account certificates index updated");
 	}

	@Override
	@Transactional
	public void updateEducation(long idAccount, List<Education> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getEducations())) {
			LOGGER.debug("Account education: nothing to update");
			return;
		} else {
			account.setEducations(updatedData);
			accountRepository.save(account);
		}
		
	}

	@Override
	@Transactional
	public void updatePractics(long idAccount, List<Practic> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getPractics())) {
			LOGGER.debug("Account practics: nothing to update");
			return;
		} else {
			account.setPractics(updatedData);
			accountRepository.save(account);
			registerUpdateIndexAccountPracticsIfTransactionSuccess(idAccount,updatedData);
		}
		
	}
	private void registerUpdateIndexAccountPracticsIfTransactionSuccess(final long idAccount, final List<Practic> updatedData) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account practics updated");
 				updateIndexAccountPractics(idAccount, updatedData);
 			}
 		});
 	}
 
 	private void updateIndexAccountPractics(long idAccount, List<Practic> updatedData) {
 		Account account = accountSearchRepository.findOne(idAccount);
 		account.setPractics(updatedData);
 		accountSearchRepository.save(account);
 		LOGGER.info("Account practics index updated");
 	}
 	
 	@Override
	@Transactional
 	public void updateInfo(long idAccount,Account accountForm){
 		Account account = accountRepository.findOne(idAccount);
 		if(account.getInfo().equals(accountForm.getInfo())){
 			LOGGER.debug("Account info: nothing to update");
			return;
 		}else{
		account.setInfo(accountForm.getInfo());
		accountRepository.save(account);
		registerUpdateIndexAccountInfoIfTransactionSuccess(idAccount, account);
 		}
 		
	}
	private void registerUpdateIndexAccountInfoIfTransactionSuccess(final long idAccount, final Account account) {
 		TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
 			@Override
 			public void afterCommit() {
 				LOGGER.info("Account  updated");
 				updateIndexAccountInfo(idAccount, account);
 			}
 		});
 	}
	private void updateIndexAccountInfo(long idAccount, Account account) {
		accountSearchRepository.save(account);
 		LOGGER.info("Account  index updated");
 	}

}
