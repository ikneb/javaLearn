package net.devstudy.resume.util;

import java.util.UUID;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import net.devstudy.resume.entity.Account;
import net.devstudy.resume.model.CurrentAccount;


public final class SecurityUtil {

	public static CurrentAccount getCurrentAccount() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication == null) {
			return null;
		}
		Object principal = authentication.getPrincipal();
		if (principal instanceof CurrentAccount) {
			return ((CurrentAccount)principal);
		} else {
			return null;
		}
	}
	
	public static Long getCurrentIdAccount() {
		CurrentAccount currentAccount = getCurrentAccount();
		return currentAccount != null ? currentAccount.getId() : null;
	}
	
	public static void authentificate(Account account) {
		CurrentAccount currentAccount = new CurrentAccount(account);
		Authentication authentication = new UsernamePasswordAuthenticationToken(
				currentAccount, currentAccount.getPassword(), currentAccount.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);
	}
	
	public static boolean isCurrentProfileAuthentificated() {
		return getCurrentAccount() != null;
	}
	
	public static String generateNewActionUid(){
		return UUID.randomUUID().toString();
	}
	
	public static String generateNewRestoreAccessToken(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	
}