package net.devstudy.resume.service;

import net.devstudy.resume.entity.Account;

public interface SocialService<T> {
	
	Account loginViaSocialNetwork(T model);

}
