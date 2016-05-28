package net.devstudy.resume.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.CertificateForm;
import net.devstudy.resume.form.ContactForm;
import net.devstudy.resume.form.CoursesForm;
import net.devstudy.resume.form.EducationsForm;
import net.devstudy.resume.form.HobbiesForm;
import net.devstudy.resume.form.LanguageForm;
import net.devstudy.resume.form.PracticForm;
import net.devstudy.resume.form.SkillForm;
import net.devstudy.resume.form.UploadExampleForm;
import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.repository.storage.HobbyRepository;
import net.devstudy.resume.service.EditAccountService;
import net.devstudy.resume.util.SecurityUtil;

@Controller
public class EditAccountController {

	@Autowired
	private EditAccountService editAccountService;
	
	@Autowired
	private HobbyRepository hobbyRepository;

	@RequestMapping(value = "/edit/edit", method = RequestMethod.GET)
	public String getEditAccount(Model model) {
		model.addAttribute("accountForm",new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/edit";
	}
	@RequestMapping(value = "/edit/edit", method = RequestMethod.POST)
	public String saveEditAccount(@Valid @ModelAttribute("accountForm") AccountForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/edit";
		}
		// TODO Update edit
		return "redirect:/chloe-albertson";
	}

	@RequestMapping(value = "/my-profile")
	public String getMyProfile(@AuthenticationPrincipal CurrentAccount currentAccount) {
		return "redirect:/" + currentAccount.getUsername();
	}
	
	/*Contacts*/
	@RequestMapping(value = "/edit/contacts", method =  RequestMethod.GET)
	public String getEditContacts(Model model) {
		model.addAttribute("contactForm",new ContactForm(editAccountService.contacts(SecurityUtil.getCurrentIdAccount())));
		return "edit/contacts";
	}
	@RequestMapping(value = "/edit/contacts", method = RequestMethod.POST)
	public String saveEditContacts(@Valid @ModelAttribute("contactForm") ContactForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/contacts";
		}
		// TODO Update contacts
		return "redirect:/chloe-albertson";
	}
	

	/* Skills */
	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(editAccountService.listSkills(SecurityUtil.getCurrentIdAccount())));
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
		model.addAttribute("skillCategories", editAccountService.listSkillCategories());
		return "edit/skills";
	}

	/* Hobbies */
	@RequestMapping(value = "/edit/hobbies", method =  RequestMethod.GET)
	public String getEditHobbies(Model model) {
		model.addAttribute("hobbyForm",new HobbiesForm(editAccountService.listHobbies(SecurityUtil.getCurrentIdAccount())));
		return gotoHobbyJSP(model);
	}
	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.POST)
	public String saveEditHobbies(@Valid @ModelAttribute("hobbyForm") HobbiesForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return gotoHobbyJSP(model);
		}
		// TODO Update courses
		return "redirect:/chloe-albertson";
	}
	private String gotoHobbyJSP(Model model) {
		model.addAttribute("hobbyName", hobbyRepository.findAll(new Sort("id")));
		return "edit/hobbies";
	}
	
	/* Practics */
	@RequestMapping(value = "/edit/practics", method = RequestMethod.GET)
	public String getEditPractics(Model model) {
		model.addAttribute("practicForm", new PracticForm(editAccountService.listPractics(SecurityUtil.getCurrentIdAccount())));
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
		model.addAttribute("languageForm", new LanguageForm(editAccountService.listLanguages(SecurityUtil.getCurrentIdAccount())));
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
		model.addAttribute("courseForm", new CoursesForm(editAccountService.listCourses(SecurityUtil.getCurrentIdAccount())));
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
		model.addAttribute("certificateForm",new CertificateForm(editAccountService.listCertificates(SecurityUtil.getCurrentIdAccount())));
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload(@ModelAttribute("uploadExampleForm") UploadExampleForm uploadExampleForm) {
		return "edit/certificates-upload";
	}

	/* Education */
	@RequestMapping(value = "/edit/education", method =  RequestMethod.GET)
	public String getEditEducation(Model model) {
		model.addAttribute("educationForm",new EducationsForm( editAccountService.listEducation(SecurityUtil.getCurrentIdAccount())));
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

	

	/* Info */
	@RequestMapping(value = "/edit/info", method =  RequestMethod.GET)
	public String getEditInfo(Model model) {
		model.addAttribute("accountForm", new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/info";
	}
	@RequestMapping(value = "/edit/info", method = RequestMethod.POST)
	public String saveEditInfo(@Valid @ModelAttribute("accountForm") AccountForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/info";
		}
		// TODO Update info
		return "redirect:/chloe-albertson";
	}
	

	@RequestMapping(value = "/edit/password", method = { RequestMethod.GET, RequestMethod.POST })
	public String getEditPassword() {
		return "edit/password";
	}

}
