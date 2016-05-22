package net.devstudy.resume.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.service.FindAccountService;

@Controller
public class PublicDataController {
	
	@Autowired
	private FindAccountService findAccountService;
	
	
	@RequestMapping(value="/{uid}",method=RequestMethod.GET)
	public String getAccount(@PathVariable("uid")String uid, Model model){
		Account account = findAccountService.findByUid(uid);
		if(account == null){
			return "account_not_found";
		}
		model.addAttribute("account", account);
		return "account";
	}
	
	@RequestMapping(value="/error",method=RequestMethod.GET)
	public String getError(){
		return "error";
	}
	
	@RequestMapping(value="/welcome",method=RequestMethod.GET)
	public String getWelcome(Model model){
		Pageable pageable = new PageRequest(1,20);
		Page<Account> accounts  = findAccountService.findAllByCompletedTrue(pageable);
		model.addAttribute("accounts", accounts);
		return "welcome";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String getSearch(){
		return "search";
	}
	
	@RequestMapping(value="/sign-in",method=RequestMethod.GET)
	public String getSingIn(){
		return "sign-in";
	}
	
	@RequestMapping(value="/sign-up",method={RequestMethod.GET,RequestMethod.POST})
	public String getSingUp(){
		return "sign-up";
	}
	
	@RequestMapping(value="/sign-up/success",method=RequestMethod.GET)
	public String getSingUpSuccess(){
		return "sign-up-success";
	}
	
	@RequestMapping(value="/sign-in-failed",method=RequestMethod.GET)
	public String getSingInFailed(){
		return "sign-in-failed";
	}
	
	@RequestMapping(value="/restore",method={RequestMethod.GET,RequestMethod.POST})
	public String getRestore(){
		return "restore";
	}
	
	@RequestMapping(value="/restore/success",method=RequestMethod.GET)
	public String getRestoreSuccess(){
		return "restore-success";
	}
	
	@RequestMapping(value="/restore/{token}",method=RequestMethod.GET)
	public String getToken(){
		return "restore";
	}

}
