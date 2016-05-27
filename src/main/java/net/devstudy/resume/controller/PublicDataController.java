package net.devstudy.resume.controller;



import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.devstudy.resume.Constants;
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
	
	@RequestMapping(value = { "/welcome" })
	 public String listAll(Model model) {
	 		Page<Account> accounts = findAccountService.findAll(new PageRequest(0, Constants.MAX_PROFILES_PER_PAGE, new Sort("id")));
	 		model.addAttribute("accounts", accounts.getContent());
	 		model.addAttribute("page", accounts);
	 		return "welcome";
	 	}
	 	
	 	@RequestMapping(value = "/fragment/more", method = RequestMethod.GET)
	 	public String moreAccount(Model model,
	 			@PageableDefault(size=Constants.MAX_PROFILES_PER_PAGE) @SortDefault(sort="id") Pageable pageable) throws UnsupportedEncodingException {
	 		Page<Account> accounts = findAccountService.findAll(pageable);
	 		model.addAttribute("accounts", accounts.getContent());
	 		return "fragment/accounts-items";
		}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String getSearch(Model model,Pageable pageable){
		Page<Account> accounts = findAccountService.findBySearchQuery("query",new PageRequest(0, Constants.MAX_PROFILES_PER_PAGE, new Sort("id")));
		model.addAttribute("accounts", accounts.getContent());
		model.addAttribute("page", accounts);
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
