package net.devstudy.resume.service;

import java.util.List;
import java.util.Set;

import net.devstudy.resume.entity.Hobby;

public interface StaticDataService {
	Set<Hobby> listAllHobbies();

	List<Hobby> createHobbyEntitiesByNames(List<String> names);

}
