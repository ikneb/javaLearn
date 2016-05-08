package net.devstudy.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditAccountController {

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getEditGet() {
		return "edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String getEditPost() {
		return "edit";
	}

	@RequestMapping(value = "/my-profile", method = RequestMethod.GET)
	public String getMyProfile() {
		return "my-profile";
	}

	@RequestMapping(value = "/edit/contacts", method = RequestMethod.GET)
	public String getEditContactsGet() {
		return "edit/contacts";
	}

	@RequestMapping(value = "/edit/contacts", method = RequestMethod.POST)
	public String getEditContactsPost() {
		return "edit/contacts";
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkillsGet() {
		return "edit/skills";
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String getEditSkillsPst() {
		return "edit/skills";
	}

	@RequestMapping(value = "/edit/practics", method = RequestMethod.GET)
	public String getEditPracticsGet() {
		return "edit/practics";
	}

	@RequestMapping(value = "/edit/practics", method = RequestMethod.POST)
	public String getEditPracticsPost() {
		return "edit/practics";
	}

	@RequestMapping(value = "/edit/certificates", method = RequestMethod.GET)
	public String getEditCertificatesGet() {
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates", method = RequestMethod.POST)
	public String getEditCertificatesPost() {
		return "edit/certificates";
	}

	@RequestMapping(value = "/edit/certificates/upload", method = RequestMethod.POST)
	public String getEditCertificatesUpload() {
		return "edit/certificates/upload";
	}

	@RequestMapping(value = "/edit/courses", method = RequestMethod.GET)
	public String getEditCoursesGet() {
		return "edit/courses";
	}

	@RequestMapping(value = "/edit/courses", method = RequestMethod.POST)
	public String getEditCoursesPost() {
		return "edit/courses";
	}

	@RequestMapping(value = "/edit/education", method = RequestMethod.GET)
	public String getEditEducationGet() {
		return "edit/education";
	}

	@RequestMapping(value = "/edit/education", method = RequestMethod.POST)
	public String getEditEducationPost() {
		return "edit/education";
	}

	@RequestMapping(value = "/edit/languages", method = RequestMethod.GET)
	public String getEditLanguagesGet() {
		return "edit/languages";
	}

	@RequestMapping(value = "/edit/languages", method = RequestMethod.POST)
	public String getEditLanguagesPost() {
		return "edit/languages";
	}

	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.GET)
	public String getEditHobbiesGet() {
		return "edit/hobbies";
	}

	@RequestMapping(value = "/edit/hobbies", method = RequestMethod.POST)
	public String getEditHobbiesPost() {
		return "edit/hobbies";
	}

	@RequestMapping(value = "/edit/info", method = RequestMethod.GET)
	public String getEditInfoGet() {
		return "edit/info";
	}

	@RequestMapping(value = "/edit/info", method = RequestMethod.POST)
	public String getEditInfoPost() {
		return "edit/info";
	}

	@RequestMapping(value = "/edit/password", method = RequestMethod.GET)
	public String getEditPasswordGet() {
		return "edit/password";
	}

	@RequestMapping(value = "/edit/password", method = RequestMethod.POST)
	public String getEditPasswordPost() {
		return "edit/password";
	}

}
