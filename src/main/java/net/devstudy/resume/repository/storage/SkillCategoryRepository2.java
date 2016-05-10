package net.devstudy.resume.repository.storage;



import org.springframework.data.repository.PagingAndSortingRepository;

import net.devstudy.resume.entity.SkillCategory;


public interface SkillCategoryRepository2 extends PagingAndSortingRepository<SkillCategory, Long> {
	
}