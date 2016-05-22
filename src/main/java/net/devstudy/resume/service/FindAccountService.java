package net.devstudy.resume.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import net.devstudy.resume.entity.Account;

public interface FindAccountService {
	
	Account findByUid(String uid);
	
	Page<Account> findAllByCompletedTrue(Pageable pageable);
}
