package net.devstudy.resume.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.service.FindAccountService;

@Service
public class FindAccountServiceImpl implements FindAccountService {
	
	@Autowired
	AccountRepository accountRepository;
	
	@Override
	public Account findByUid(String uid) {
		return accountRepository.findByUid(uid);
	}

	@Override
	public Page<Account> findAllByCompletedTrue(Pageable pageable) {
		
		return accountRepository.findAllByCompletedTrue(pageable);
	}
	

}
