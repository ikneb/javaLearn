package net.devstudy.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.form.SkillForm;
import net.devstudy.resume.form.UploadExampleForm;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.repository.storage.SkillCategoryRepository;

@Controller
public class EditAccountController {
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	@Autowired
	private AccountRepository accountRepository;


	@RequestMapping(value = "/edit", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditAccount() {
		return "edit/edit";
	}

	@RequestMapping(value = "/my-profile", method = RequestMethod.GET)
	public String getMyProfile() {
		return "my-profile";
	}

	@RequestMapping(value = "/edit/contacts", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditContacts() {
		
		return "edit-contacts";
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditTechSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(accountRepository.findOne(1L).getSkills()));
		return gotoSkillsJSP(model);
	}
	
	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String saveEditTechSkills(@ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
        }
		//TODO Update skills 
		return "redirect:/chloe-albertson";
	}
	
	private String gotoSkillsJSP(Model model){
		model.addAttribute("skillCategories", skillCategoryRepository.findAll(new Sort("id")));
		return "edit/skills";
	}

	@RequestMapping(value = "/edit/practics", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditPractics(Model model) {
		model.addAttribute("practics", accountRepository.findOne(1L).getPractics());
		return "edit/practics";
	}

	@RequestMapping(value = "/edit/certificates", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditCertificates(Model model) {
		model.addAttribute("certificates", accountRepository.findOne(1L).getCertificates());
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload(@ModelAttribute("uploadExampleForm") UploadExampleForm uploadExampleForm) {
		return "edit/certificates-upload";
	}

	@RequestMapping(value = "/edit/courses", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditCourses(Model model) {
		model.addAttribute("courses", accountRepository.findOne(1L).getCourses());
		return "edit/courses";
	}

	@RequestMapping(value = "/edit/education", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditEducation(Model model) {
		model.addAttribute("educations", accountRepository.findOne(1L).getEducations());
		return "edit/education";
	}

	@RequestMapping(value = "/edit/languages", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditLanguages(Model model) {
		model.addAttribute("languages", accountRepository.findOne(1L).getLanguages());
		return "edit/languages";
	}

	@RequestMapping(value = "/edit/hobbies", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditHobbies(Model model) {
		model.addAttribute("hobbies", accountRepository.findOne(1L).getHobbies());
		return "edit/hobbies";
	}

	@RequestMapping(value = "/edit/info", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditInfo(Model model) {
		model.addAttribute("info", accountRepository.findOne(1L).getInfo());
		return "edit/info";
	}

	@RequestMapping(value = "/edit/password", method = {RequestMethod.GET,RequestMethod.POST})
	public String getEditPassword() {
		return "edit/password";
	}

}
