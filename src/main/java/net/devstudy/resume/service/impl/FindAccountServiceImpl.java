package net.devstudy.resume.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.model.CurrentAccount;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.service.FindAccountService;

@Service
public class FindAccountServiceImpl implements FindAccountService,UserDetailsService {
	private static final Logger LOGGER = LoggerFactory.getLogger(FindAccountServiceImpl.class);
	@Autowired
	private AccountSearchRepository accountSearchRepository;
	
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

	@Override
	public Page<Account> findAll(Pageable pageable) {
		return accountRepository.findAll(pageable);
	}

	@Override
	@Transactional
	public Iterable<Account> findAllForIndexing() {
		Iterable<Account> all = accountRepository.findAll();
		 		for(Account p : all) {
		 			p.getSkills().size();
		 			p.getCertificates().size();
		 			p.getLanguages().size();
		 			p.getPractics().size();
		 			p.getCourses().size();
		 		}
		 		return all;
		
	}

	@Override
	public Page<Account> findBySearchQuery(String query, Pageable pageable) {
		return accountSearchRepository.findByObjectiveLikeOrSummaryLikeOrPracticsCompanyLikeOrPracticsPositionLike(
				 				query, query, query, query, pageable);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = findAccount(username);
		if (account != null) {
			return new CurrentAccount(account);
		} else {
			LOGGER.error("Account not found by " + username);
			throw new UsernameNotFoundException("Account not found by " + username);
		}
	}
	
	private Account findAccount(String anyUnigueId) {
		Account account = accountRepository.findByUid(anyUnigueId);
		if (account == null) {
			account = accountRepository.findByEmail(anyUnigueId);
			if (account == null) {
				account = accountRepository.findByPhone(anyUnigueId);
			}
		}
		return account;
	}

}
