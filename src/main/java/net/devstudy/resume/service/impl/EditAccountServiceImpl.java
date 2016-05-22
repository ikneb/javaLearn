package net.devstudy.resume.service.impl;

import java.util.List;
import org.apache.commons.collections.CollectionUtils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
import net.devstudy.resume.form.SignUpForm;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.repository.storage.SkillCategoryRepository;
import net.devstudy.resume.service.EditAccountService;

@Service
public class EditAccountServiceImpl implements EditAccountService {
	private static final Logger LOGGER = LoggerFactory.getLogger(EditAccountServiceImpl.class);

	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@Override
	public Account createNewProfile(SignUpForm signUpForm) {
		return null;
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
	public void updateSkills(long idAccount, List<Skill> updatedData) {
		Account account = accountRepository.findOne(idAccount);
		if (CollectionUtils.isEqualCollection(updatedData, account.getSkills())) {
			LOGGER.debug("Account skills: nothing to update");
			return;
		} else {
			account.setSkills(updatedData);
			accountRepository.save(account);
		}
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
		}
		
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
		}
		
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
		}
		
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
		}
		
	}

}
