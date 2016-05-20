package net.devstudy.resume.validator;

import java.sql.Date;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import net.devstudy.resume.annotation.constraints.Adulthood;

public class AdulthoodConstraintValidator implements ConstraintValidator<Adulthood, Date>{

	int adulthoodAge;
	
	@Override
	public void initialize(Adulthood constraintAnnotation) {
		this.adulthoodAge = constraintAnnotation.adulthoodAge();
		
	}

	@SuppressWarnings("deprecation")
	@Override
	public boolean isValid(Date value, ConstraintValidatorContext context) {
		if(value == null) {
			return true;
		}
		java.util.Date nowDate = new java.util.Date();
		if((nowDate.getYear() - value.getYear()) < adulthoodAge){
		return false;
		}
		return true;
	}

}
