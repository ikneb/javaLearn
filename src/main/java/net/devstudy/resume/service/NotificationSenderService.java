package net.devstudy.resume.service;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.model.NotificationMessage;

public interface NotificationSenderService {

	void sendNotification(NotificationMessage message);

	String getDestinationAddress(Account account);
}