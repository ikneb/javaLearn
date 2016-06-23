package net.devstudy.resume.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.CertificateForm;
import net.devstudy.resume.form.ContactForm;
import net.devstudy.resume.form.CoursesForm;
import net.devstudy.resume.form.EducationsForm;
import net.devstudy.resume.form.LanguageForm;
import net.devstudy.resume.form.PracticForm;
import net.devstudy.resume.form.SkillForm;
import net.devstudy.resume.form.UploadForm;
import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.repository.storage.HobbyRepository;
import net.devstudy.resume.service.EditAccountService;
import net.devstudy.resume.service.FotoDownloadService;
import net.devstudy.resume.util.SecurityUtil;

@Controller
public class EditAccountController {
	
	@Autowired
	private EditAccountService editAccountService;

	@Autowired
	private HobbyRepository hobbyRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	FotoDownloadService fotoDownloadService;

	@RequestMapping(value = "/edit/edit", method = RequestMethod.GET)
	public String getEditAccount(Model model) {
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		return "edit/edit";
	}

	@RequestMapping(value = "/edit/edit", method = RequestMethod.POST)
	public String saveEditAccount(@Valid @ModelAttribute("accountForm") AccountForm accountForm,
			BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/edit";
		}
		fotoDownloadService.downloadFoto(accountForm);
		editAccountService.updateAccount(SecurityUtil.getCurrentIdAccount(), accountForm.getAccount());
		return "redirect:/edit/contacts";
	}

	@RequestMapping(value = "/my-profile")
	public String getMyProfile(@AuthenticationPrincipal CurrentAccount currentAccount) {
		return "redirect:/" + currentAccount.getUsername();
	}

	/* Contacts */
	@RequestMapping(value = "/edit/contacts", method = RequestMethod.GET)
	public String getEditContacts(Model model) {
		model.addAttribute("contactForm",
				new ContactForm(editAccountService.contacts(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/contacts";
	}

	@RequestMapping(value = "/edit/contacts", method = RequestMethod.POST)
	public String saveEditContacts(@Valid @ModelAttribute("contactForm") ContactForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/contacts";
		}
		editAccountService.updateContact(SecurityUtil.getCurrentIdAccount(), form.getContact());
		return "redirect:/edit/skills";
	}

	/* Skills */
	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkills(Model model) {
		model.addAttribute("skillForm",
				new SkillForm(editAccountService.listSkills(SecurityUtil.getCurrentIdAccount())));
		return gotoSkillsJSP(model);
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String saveEditSkills(@Valid @ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
		}
		editAccountService.updateSkills(SecurityUtil.getCurrentIdAccount(), form.getItems());
		return "redirect:/edit/practics";
	}

	private String gotoSkillsJSP(Model model) {
		model.addAttribute("skillCategories", editAccountService.listSkillCategories());
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/skills";
	}

	/* Hobbies */
	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.GET)
	public String getEditHobbies(Model model) {
		model.addAttribute("hobbies",
				editAccountService.listHobbiesWithProfileSelected(SecurityUtil.getCurrentAccount()));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return gotoHobbyJSP(model);
	}

	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.POST)
	public String saveEditHobbies(@RequestParam("hobbies") List<String> hobbies) {
		editAccountService.updateHobbies(SecurityUtil.getCurrentAccount(), hobbies);
		return "redirect:/edit/info";
	}
	

	private String gotoHobbyJSP(Model model) {
		model.addAttribute("hobbyName", hobbyRepository.findAll(new Sort("id")));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/hobbies";
	}

	/* Practics */
	@RequestMapping(value = "/edit/practics", method = RequestMethod.GET)
	public String getEditPractics(Model model) {
		model.addAttribute("practicForm",
				new PracticForm(editAccountService.listPractics(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/practics";
	}

	@RequestMapping(value = "/edit/practics", method = RequestMethod.POST)
	public String saveEditPractic(@Valid @ModelAttribute("practicForm") PracticForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/practics";
		}
		editAccountService.updatePractics(SecurityUtil.getCurrentIdAccount(), form.getItems());
		return "redirect:/edit/certificates";
	}

	/* Languages */
	@RequestMapping(value = "/edit/languages", method = RequestMethod.GET)
	public String getEditLanguages(Model model) {
		model.addAttribute("languageForm",
				new LanguageForm(editAccountService.listLanguages(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/languages";
	}

	@RequestMapping(value = "/edit/languages", method = RequestMethod.POST)
	public String saveEditLanguages(@Valid @ModelAttribute("languageForm") LanguageForm form,
			BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/languages";
		}
		editAccountService.updateLanguages(SecurityUtil.getCurrentIdAccount(), form.getItems());
		return "redirect:/edit/hobbies";
	}

	/* Courses */
	@RequestMapping(value = "/edit/courses", method = RequestMethod.GET)
	public String getEditCourses(Model model) {
		model.addAttribute("courseForm",
				new CoursesForm(editAccountService.listCourses(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/courses";
	}

	@RequestMapping(value = "/edit/courses", method = RequestMethod.POST)
	public String saveEdit—ourses(@Valid @ModelAttribute("courseForm") CoursesForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/courses";
		}
		editAccountService.updateCourses(SecurityUtil.getCurrentIdAccount(), form.getItems());
		return "redirect:/edit/education";
	}

	/* Certificates */
	@RequestMapping(value = "/edit/certificates", method = RequestMethod.GET)
	public String getEditCertificates(Model model) {
		model.addAttribute("certificateForm",
				new CertificateForm(editAccountService.listCertificates(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload(@ModelAttribute("uploadForm") UploadForm uploadForm) {
		fotoDownloadService.downloadCertificate(uploadForm);
		return "edit/courses";
	}

	/* Education */
	@RequestMapping(value = "/edit/education", method = RequestMethod.GET)
	public String getEditEducation(Model model) {
		model.addAttribute("educationForm",
				new EducationsForm(editAccountService.listEducation(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/education";
	}

	@RequestMapping(value = "/edit/education", method = RequestMethod.POST)
	public String saveEditEducation(@Valid @ModelAttribute("educationForm") EducationsForm form,
			BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/education";
		}
		editAccountService.updateEducation(SecurityUtil.getCurrentIdAccount(), form.getItems());
		return "redirect:/edit/languages";
	}

	/* Info */
	@RequestMapping(value = "/edit/info", method = RequestMethod.GET)
	public String getEditInfo(Model model) {
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "edit/info";
	}

	@RequestMapping(value = "/edit/info", method = RequestMethod.POST)
	public String saveEditInfo(@Valid @ModelAttribute("accountForm") AccountForm form, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			return "edit/info";
		}
		editAccountService.updateInfo(SecurityUtil.getCurrentIdAccount(), form.getAccount());
		return "redirect:/welcome";
	}

	@RequestMapping(value = "/edit/password", method = { RequestMethod.GET, RequestMethod.POST })
	public String getEditPassword() {
		return "edit/password";
	}

	
}
