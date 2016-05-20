package net.devstudy.resume.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import net.devstudy.resume.annotation.constraints.Phone;

public class PhoneConstraintValidator implements ConstraintValidator<Phone, String>{

	private boolean withSpechSymbols;
	
	@Override
	public void initialize(Phone constraintAnnotation) {
		this.withSpechSymbols = constraintAnnotation.withSpechSymbols();
		
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		if(value == null) {
			return true;
		}
		String validationTemplate = getValidationTemplate();
		for(int i=0;i<value.length();i++){
			char ch = value.charAt(i);
			if(validationTemplate.indexOf(ch) == -1) {
				return false;
			}
		}
		return true;
	}
	
	private static final String NUMBERS = "0123456789";
	private static final String SPETCH_SYMBOLS = "-+()";
	
	public String getValidationTemplate(){
		StringBuilder template = new StringBuilder(NUMBERS);
		if(withSpechSymbols) {
			template.append(SPETCH_SYMBOLS);
		}
		return template.toString();
		
	}
}
