package net.devstudy.resume.service;

import java.util.List;

import org.springframework.context.annotation.Profile;

import net.devstudy.resume.entity.Skill;
import net.devstudy.resume.entity.SkillCategory;
import net.devstudy.resume.form.SignUpForm;

public interface EditAccountService {
Profile createNewProfile(SignUpForm signUpForm);
	
	List<Skill> listSkills(long idProfile);

	List<SkillCategory> listSkillCategories();
	
	void updateSkills(long idProfile, List<Skill> skills);

}
