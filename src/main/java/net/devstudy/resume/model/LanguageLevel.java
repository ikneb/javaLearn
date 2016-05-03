package net.devstudy.resume.model;

public enum LanguageLevel {
	BEGINER,
	
	ELEMENTARY,
	
	PRE_INTERMEDIATE,
	
	INTERMEDIATE,
	
	UPPER_INTERMEDIATE,
	
	ADVANCED,
	
	PROFICIENCY;
	
	public String getBdValue(){
		 return name().toLowerCase();
	}
}
