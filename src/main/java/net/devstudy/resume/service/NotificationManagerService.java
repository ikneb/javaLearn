package net.devstudy.resume.service;

import net.devstudy.resume.entity.Account;


public interface NotificationManagerService {

	void sendRestoreAccessLink(Account account, String restoreLink);

	void sendPasswordChanged(Account account);
}