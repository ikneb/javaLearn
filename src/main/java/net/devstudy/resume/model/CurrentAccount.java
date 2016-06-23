package net.devstudy.resume.model;

import java.util.Collections;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import net.devstudy.resume.Constants;
import net.devstudy.resume.entity.Account;


public class CurrentAccount extends User {
	private static final long serialVersionUID = 3850489832510630519L;
	private final Long id;
	private final String fullName;
	private final String uid;

	public CurrentAccount(Account account) {
		super(account.getUid(), account.getPassword(), true, true, true, true, Collections.singleton(new SimpleGrantedAuthority(Constants.USER)));
		this.id = account.getId();
		this.fullName = account.getFullName();
		this.uid = account.getUid();
	}

	public Long getId() {
		return id;
	}
	
	public String getFullName() {
		return fullName;
	}
	
	public String getUid(){
		return uid;
	}

	@Override
	public String toString() {
		return String.format("CurrentAccount [id=%s, username=%s]", id, getUsername());
	}
}
