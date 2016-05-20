package net.devstudy.resume.validator;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import net.devstudy.resume.annotation.constraints.Adulthood;

public class AdulthoodConstraintValidator implements ConstraintValidator<Adulthood, Date> {

	int adulthoodAge;
	

	@Override
	public void initialize(Adulthood constraintAnnotation) {
		this.adulthoodAge = constraintAnnotation.adulthoodAge();

	}

	@SuppressWarnings("deprecation")
	@Override
	public boolean isValid(Date value, ConstraintValidatorContext context) {
		java.util.Date nowDate = new java.util.Date();
		
		if (value == null) {
			return true;
		}
		
		if ((nowDate.getYear() - value.getYear()) < adulthoodAge || isValidDate(value)) {
			return false;
		}
		return true;
	}

	public static boolean isValidDate(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat dateFormat = DateFormat.getDateInstance();
		String str = dateFormat.format(date);
		try {
			sdf.parse(str);
			return true;

		} catch (ParseException e) {
			return false;
		}

		
	}

}
