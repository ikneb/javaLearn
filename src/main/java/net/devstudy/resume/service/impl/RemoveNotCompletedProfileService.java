package net.devstudy.resume.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.repository.storage.AccountRepository;


@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RemoveNotCompletedProfileService {

	@Autowired
	private AccountRepository accountRepository;

	@Value("${remove.not.completed.accounts.interval}")
	private int removeNotCompletedAccountsInterval;

	@Transactional
	@Scheduled(cron = "0 59 23 * * *")
	public void removeNotCompletedProfiles() {
		DateTime date = DateTime.now().minusDays(removeNotCompletedAccountsInterval);
		List<Long> idsToRemove = new ArrayList<>();
		for (Account account : accountRepository.findByCompletedFalseAndCreatedBefore(new Timestamp(date.getMillis()))) {
			idsToRemove.add(account.getId());
			accountRepository.delete(account);
		}
	}
}