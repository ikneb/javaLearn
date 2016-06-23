package net.devstudy.resume.service;

import java.util.List;

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
import net.devstudy.resume.form.PasswordForm;
import net.devstudy.resume.form.SignUpForm;
import net.devstudy.resume.model.CurrentAccount;


public interface EditAccountService {

	Account createNewAccount(SignUpForm signUpForm);
	
	

	List<SkillCategory> listSkillCategories();
	
	void updateAccount(long idAccount,Account account);
	void updateContact(long idAccount , Contact contact);
	void updateSkills(long idAccount, List<Skill> skills);
	void updateHobbies(CurrentAccount currentAccount, List<String> hobbies);
	void updateLanguages(long idAccount, List<Language> languages);
	void updateCourses(long idAccount, List<Course> courses);
	void updateCertificates(long idAccount, List<Certificate> certificates);
	void updateEducation(long idAccount, List<Education> education);
	void updatePractics(long idAccount, List<Practic> practics);
	void updateInfo(long idAccount,Account account);
	
	List<Hobby> listHobbiesWithProfileSelected(CurrentAccount currentAccount);
	
	List<Skill> listSkills(long idAccount);
	List<Hobby> listHobbies(long idAccount);
	List<Language> listLanguages(long idAccount);
	List<Course> listCourses(long idAccount);
	List<Certificate> listCertificates(long idAccount);
	List<Education> listEducation(long idAccount);
	List<Practic> listPractics(long idAccount);
	
	Account account(long idAccount); 
	Contact contacts(long idAccount);

    Account  updatePassword(CurrentAccount currentAccount, PasswordForm form);

}
