package net.devstudy.resume.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.service.FindAccountService;

@Service
public class FindAccountServiceImpl implements FindAccountService {

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

}
