package net.devstudy.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.repository.storage.AccountRepository;

@Controller
public class RemoveAccountController {
	
	@Autowired
	private AccountRepository accountRepository;
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String getRemove(@AuthenticationPrincipal CurrentAccount currentAccount) {
		Account account = 
		accountRepository.delete(account);
		return "remove";
	}

}
