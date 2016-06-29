package net.devstudy.resume.component.impl;

import org.springframework.stereotype.Component;

import net.devstudy.resume.component.DataBuilder;

@Component
public class DataBuiderImpl implements DataBuilder {
	
	@Override
	public String buildRestoreAccessLink(String appHost, String token) {
		return appHost + "/restore/" + token;
	}

}
