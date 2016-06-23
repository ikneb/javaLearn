package net.devstudy.resume.controller;



import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.devstudy.resume.Constants;
import net.devstudy.resume.entity.Account;
import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.SignUpForm;
import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.service.EditAccountService;
import net.devstudy.resume.service.FindAccountService;
import net.devstudy.resume.service.impl.NotificationManagerServiceImpl;
import net.devstudy.resume.util.SecurityUtil;

@Controller
public class PublicDataController {
	
	@Autowired
	private FindAccountService findAccountService;
	
	@Autowired
	private EditAccountService editAccountService;
	
	@Autowired
	NotificationManagerServiceImpl notificationManagerServiceImpl;
	
	
	
	
	
	
	@RequestMapping(value="/{uid}",method=RequestMethod.GET)
	public String getAccount(@PathVariable("uid")String uid, Model model){
		Account account = findAccountService.findByUid(uid);
		if(account == null){
			return "account_not_found";
		}
		model.addAttribute("account", account);
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
		return "account";
	}
	
	@RequestMapping(value="/error",method=RequestMethod.GET)
	public String getError(){
		return "error";
	}
	
	@RequestMapping(value = { "/welcome" })
	 public String listAll(Model model,@AuthenticationPrincipal CurrentAccount currentAccount) {
	 		Page<Account> accounts = findAccountService.findAll(new PageRequest(0, Constants.MAX_PROFILES_PER_PAGE, new Sort("id")));
	 		model.addAttribute("accounts", accounts.getContent());
	 			 		model.addAttribute("page", accounts);
	 			 		if(SecurityUtil.getCurrentIdAccount()!=null){
	 			 		model.addAttribute("accountForm",
	 							new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
	 			 		}
	 		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
	 		return "welcome";
	 	}
	 	
	 	@RequestMapping(value = "/fragment/more", method = RequestMethod.GET)
	 	public String moreAccount(Model model,
	 			@PageableDefault(size=Constants.MAX_PROFILES_PER_PAGE) @SortDefault(sort="id") Pageable pageable) throws UnsupportedEncodingException {
	 		Page<Account> accounts = findAccountService.findAll(pageable);
	 		model.addAttribute("accounts", accounts.getContent());
	 		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
	 		return "fragment/accounts-items";
		}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String getSearch(@RequestParam("query")String query, Model model){
		Page<Account> accounts = findAccountService.findBySearchQuery(query,new PageRequest(0, Constants.MAX_PROFILES_PER_PAGE, new Sort("id")));
		model.addAttribute("accounts", accounts.getContent());
		model.addAttribute("page", accounts);
		model.addAttribute("isAuthentif", SecurityUtil.isCurrentProfileAuthentificated());
	/*	model.addAttribute("accountForm",new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));*/
		return "search";
	}
	
	@RequestMapping(value = "/sign-in")
	public String signIn() {
		CurrentAccount currentAccount = SecurityUtil.getCurrentAccount();
		if(currentAccount != null) {
			return "redirect:/" + currentAccount.getUsername();
		}
		else{
			return "sign-in";
		}
	}
	
	@RequestMapping(value = "/sign-in-failed")
	public String signInFailed(HttpSession session) {
		if (session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION") == null) {
			return "redirect:/sign-in";
		}
		return "sign-in";
	}
	
	@RequestMapping(value="/sign-up-success")
	public String getSingUpSuccess(Model model){
		model.addAttribute("accountForm",
				new AccountForm(editAccountService.account(SecurityUtil.getCurrentIdAccount())));
		return "/sign-up-success";
	}
	
	@RequestMapping(value="/sign-up",method=RequestMethod.GET)
	public String getSingUp(){
		return "/sign-up";
	}
	
	@RequestMapping(value="/sign-up",method=RequestMethod.POST)
	public String SingUp(@Valid @ModelAttribute("signUpForm") SignUpForm form, BindingResult bindingResult,
			Model model){
		if (bindingResult.hasErrors()) {
			return "/sign-up";
		}
		Account account = editAccountService.createNewAccount(form);
		 SecurityUtil.authentificate(account);
		return "redirect:/sign-up-success";
	}
	
	@RequestMapping(value="/sign-out")
	public String singOut(){
	 return  "redirect:/welcome";
	}
	
	
	@RequestMapping(value="/restore",method=RequestMethod.GET)
	public String getRestore(Model model){
		notificationManagerServiceImpl.sendRestoreAccessLink(editAccountService.account(SecurityUtil.getCurrentIdAccount()),"http://localhost:8080/");
		return "redirect:/welcome";
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
