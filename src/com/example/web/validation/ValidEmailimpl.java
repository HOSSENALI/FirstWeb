package com.example.web.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.apache.commons.validator.routines.EmailValidator;
public class ValidEmailimpl implements ConstraintValidator<ValidEmail, String> {
	private int min;

	@Override
	public void initialize(ValidEmail constrainAnnotation) {

		min = constrainAnnotation.min();
	}

	@Override
	public boolean isValid(String email, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		if (email.length() < min) {
			return false;
		}
		if (!EmailValidator.getInstance(false).isValid(email)) {
			return false;
		}
		return true;
	}

}
