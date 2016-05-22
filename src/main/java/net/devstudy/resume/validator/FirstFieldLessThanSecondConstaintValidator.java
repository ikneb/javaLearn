package net.devstudy.resume.validator;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import net.devstudy.resume.annotation.constraints.FirstFieldLessThanSecond;
import net.devstudy.resume.entity.Practic;



public class FirstFieldLessThanSecondConstaintValidator implements ConstraintValidator<FirstFieldLessThanSecond, Practic>{
	
	String first;
	String second;
	@Override
	public void initialize(FirstFieldLessThanSecond constraintAnnotation) {
		this.first= constraintAnnotation.first();
		this.second=constraintAnnotation.second();
	}
	
	@Override
	public boolean isValid(Practic value, ConstraintValidatorContext context) {
		SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
		if(first == null||second==null){
			return true;
		}
		try{
		Date begin= format.parse(first);
		Date finish= format.parse(second);
		
		if( begin.compareTo(finish)== 1){
			return false;
		}
		}catch(ParseException e){
			
		}
		
		
		return true;
	}
	
	
	
}
