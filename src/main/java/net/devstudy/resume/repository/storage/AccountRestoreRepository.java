package net.devstudy.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import net.devstudy.resume.entity.AccountRestore;


public interface AccountRestoreRepository extends CrudRepository<AccountRestore, Long> {
	
	AccountRestore findByToken(String token);
}