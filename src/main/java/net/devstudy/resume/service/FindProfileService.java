package net.devstudy.resume.service;

import org.springframework.context.annotation.Profile;

public interface FindProfileService {
	Profile findByUid(String uid);
}
