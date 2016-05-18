package net.devstudy.resume.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.CoursesForm;
import net.devstudy.resume.form.EducationsForm;
import net.devstudy.resume.form.HobbiesForm;
import net.devstudy.resume.form.LanguageForm;
import net.devstudy.resume.form.PracticForm;
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

	@RequestMapping(value = "/edit", method = { RequestMethod.GET, RequestMethod.POST })
	public String getEditAccount() {
		return "edit/edit";
	}

	@RequestMapping(value = "/my-profile", method = RequestMethod.GET)
	public String getMyProfile() {
		return "my-profile";
	}

	@RequestMapping(value = "/edit/contacts", method = { RequestMethod.GET, RequestMethod.POST })
	public String getEditContacts() {

		return "edit-contacts";
	}

	/* Skills */
	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(accountRepository.findOne(1L).getSkills()));
		return gotoSkillsJSP(model);
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String saveEditSkills(@Valid @ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
		}
		// TODO Update skills
		return "redirect:/chloe-albertson";
	}

	private String gotoSkillsJSP(Model model) {
		model.addAttribute("skillCategories", skillCategoryRepository.findAll(new Sort("id")));
		return "edit/skills";
	}

	/* Practics */
	@RequestMapping(value = "/edit/practics", method = RequestMethod.GET)
	public String getEditPractics(Model model) {
		model.addAttribute("practicForm", new PracticForm(accountRepository.findOne(1L).getPractics()));
		return "edit/practics";
	}

	@RequestMapping(value = "/edit/practics", method = RequestMethod.POST)
	public String saveEditPractic(@Valid @ModelAttribute("practicForm") PracticForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/practics";
		}
		// TODO Update practic
		return "redirect:/chloe-albertson";
	}

	/* Languages */
	@RequestMapping(value = "/edit/languages", method = RequestMethod.GET)
	public String getEditLanguages(Model model) {
		model.addAttribute("languageForm", new LanguageForm(accountRepository.findOne(1L).getLanguages()));
		return "edit/languages";
	}

	@RequestMapping(value = "/edit/languages", method = RequestMethod.POST)
	public String saveEditLanguages(@Valid @ModelAttribute("languageForm") LanguageForm form,
			BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/languages";
		}
		// TODO Update languages
		return "redirect:/chloe-albertson";
	}

	/* Courses */
	@RequestMapping(value = "/edit/courses", method = RequestMethod.GET)
	public String getEditCourses(Model model) {
		model.addAttribute("courseForm", new CoursesForm(accountRepository.findOne(8L).getCourses()));
		return "edit/courses";
	}

	@RequestMapping(value = "/edit/courses", method = RequestMethod.POST)
	public String saveEdit—ourses(@Valid @ModelAttribute("courseForm") CoursesForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/courses";
		}
		// TODO Update courses
		return "redirect:/chloe-albertson";
	}

	/* Certificates */
	@RequestMapping(value = "/edit/certificates", method =  RequestMethod.GET)
	public String getEditCertificates(Model model) {
		model.addAttribute("certificates", accountRepository.findOne(1L).getCertificates());
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload(@ModelAttribute("uploadExampleForm") UploadExampleForm uploadExampleForm) {
		return "edit/certificates-upload";
	}

	/* Education */
	@RequestMapping(value = "/edit/education", method =  RequestMethod.GET)
	public String getEditEducation(Model model) {
		model.addAttribute("educationForm",new EducationsForm( accountRepository.findOne(1L).getEducations()));
		return "edit/education";
	}
	@RequestMapping(value = "/edit/education", method = RequestMethod.POST)
	public String saveEditEducation(@Valid @ModelAttribute("educationForm") EducationsForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/education";
		}
		// TODO Update courses
		return "redirect:/chloe-albertson";
	}

	/* Hobbies */
	@RequestMapping(value = "/edit/hobbies", method =  RequestMethod.GET)
	public String getEditHobbies(Model model) {
		model.addAttribute("hobbyForm",new HobbiesForm(accountRepository.findOne(1L).getHobbies()));
		return "edit/hobbies";
	}
	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.POST)
	public String saveEditHobbies(@Valid @ModelAttribute("hobbyForm") HobbiesForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/hobbies";
		}
		// TODO Update courses
		return "redirect:/chloe-albertson";
	}

	/* Info */
	@RequestMapping(value = "/edit/info", method =  RequestMethod.GET)
	public String getEditInfo(Model model) {
		model.addAttribute("info",accountRepository.findOne(1L).getInfo());
		return "edit/info";
	}
	@RequestMapping(value = "/edit/info", method = RequestMethod.POST)
	public String saveEditInfo(@Valid @ModelAttribute("accountForm") AccountForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/info";
		}
		// TODO Update courses
		return "redirect:/chloe-albertson";
	}
	

	@RequestMapping(value = "/edit/password", method = { RequestMethod.GET, RequestMethod.POST })
	public String getEditPassword() {
		return "edit/password";
	}

}
