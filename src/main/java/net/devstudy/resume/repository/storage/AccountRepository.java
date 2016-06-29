package net.devstudy.resume.repository.storage;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import net.devstudy.resume.entity.Account;


public interface AccountRepository extends PagingAndSortingRepository<Account, Long> {

	Account findByUid(String uid);
	
	Account findByEmail(String email);
	
	Account findByPhone(String phone);
	
	Account findByUidOrEmailOrPhone(String uid, String email, String phone);
	
	int countByUid(String uid);
	
	Page<Account> findAllByCompletedTrue(Pageable pageable);
	
	List<Account> findByCompletedFalseAndCreatedBefore(Timestamp oldDate);
}
