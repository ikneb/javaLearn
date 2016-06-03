package net.devstudy.resume.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.model.NotificationMessage;
import net.devstudy.resume.service.NotificationManagerService;
import net.devstudy.resume.service.NotificationSenderService;
import net.devstudy.resume.service.NotificationTemplateService;

@Service
public class NotificationManagerServiceImpl implements NotificationManagerService {
	private static final Logger LOGGER = LoggerFactory.getLogger(NotificationManagerServiceImpl.class);

	@Autowired
	private NotificationSenderService notificationSenderService;

	@Autowired
	private NotificationTemplateService notificationTemplateService;

	@Override
	public void sendRestoreAccessLink(Account account, String restoreLink) {
		LOGGER.debug("Restore link: {} for account {}", restoreLink, account.getUid());
		Map<String, Object> model = new HashMap<>();
		model.put("account", account);
		model.put("restoreLink", restoreLink);
		processNotification(account, "restoreAccessNotification", model);
	}

	@Override
	public void sendPasswordChanged(Account account) {
		LOGGER.debug("Password changed for account {}", account.getUid());
		Map<String, Object> model = new HashMap<>();
		model.put("profile", account);
		processNotification(account, "passwordChangedNotification", model);
	}

	private void processNotification(Account account, String templateName, Object model) {
		String destinationAddress = notificationSenderService.getDestinationAddress(account);
		if (StringUtils.isNotBlank(destinationAddress)) {
			NotificationMessage notificationMessage = notificationTemplateService.createNotificationMessage(templateName, model);
			notificationMessage.setDestinationAddress(destinationAddress);
			notificationMessage.setDestinationName(account.getFullName());
			notificationSenderService.sendNotification(notificationMessage);
		} else {
			LOGGER.error("Notification ignored: destinationAddress is empty for profile " + account.getUid());
		}
	}
}