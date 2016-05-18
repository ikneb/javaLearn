package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Account;

public class AccountForm implements Serializable{
	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Account> items = new ArrayList<>();
	
	public AccountForm() {
		super();
	}

	public AccountForm(List<Account> items) {
		super();
		this.items = items;
	}

	public List<Account> getItems() {
		return items;
	}

	public void setItems(List<Account> items) {
		this.items = items;
	}

}
