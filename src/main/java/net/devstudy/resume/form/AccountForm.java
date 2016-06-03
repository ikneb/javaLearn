package net.devstudy.resume.form;

import javax.validation.Valid;

import org.springframework.web.multipart.MultipartFile;

import net.devstudy.resume.entity.Account;

public class AccountForm {
	
	private MultipartFile file;
	
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
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

}
