package net.devstudy.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.util.SecurityUtil;

@Controller
public class RemoveAccountController {
	
	@Autowired
	private AccountRepository accountRepository;
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String getRemoveGet() {		
		return "remove";
	}
	
	@RequestMapping(value = "/removeConfirmation", method = RequestMethod.GET)
	public String getRemove() {
		
		accountRepository.delete(SecurityUtil.getCurrentIdAccount());
		return "redirect:/sign-out";
	}

}
