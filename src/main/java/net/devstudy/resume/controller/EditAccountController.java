package net.devstudy.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.repository.storage.SkillCategoryRepository;

@Controller
public class EditAccountController {
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;

	@RequestMapping(value = "/edit", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditAccount() {
		return "edit";
	}

	@RequestMapping(value = "/my-profile", method = RequestMethod.GET)
	public String getMyProfile() {
		return "my-profile";
	}

	@RequestMapping(value = "/edit/contacts", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditContacts() {
		
		return "edit-contacts";
	}

	@RequestMapping(value = "/skills", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditSkills(Model model) {
		model.addAttribute("skillCategories", skillCategoryRepository.findAll(new Sort("id")));
		return "edit-skills";
	}

	@RequestMapping(value = "/edit/practics", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditPractics() {
		return "edit-practics";
	}

	@RequestMapping(value = "/edit/certificates", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditCertificates() {
		return "edit-certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload() {
		return "edit-certificates-upload";
	}

	@RequestMapping(value = "/edit/courses", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditCourses() {
		return "edit-courses";
	}

	@RequestMapping(value = "/edit/education", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditEducation() {
		return "edit-education";
	}

	@RequestMapping(value = "/edit/languages", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditLanguages() {
		return "edit-languages";
	}

	@RequestMapping(value = "/edit/hobbies", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditHobbies() {
		return "edit-hobbies";
	}

	@RequestMapping(value = "/edit/info", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditInfo() {
		return "edit-info";
	}

	@RequestMapping(value = "/edit/password", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditPassword() {
		return "edit-password";
	}

}
