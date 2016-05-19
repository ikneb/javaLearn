package net.devstudy.resume.form;

import javax.validation.Valid;

import net.devstudy.resume.entity.Account;

public class AccountForm {
	
	@Valid
	private Account account;
	
	public AccountForm() {
		super();
	}

	public AccountForm(Account account) {
		super();
		this.account = account;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

}
