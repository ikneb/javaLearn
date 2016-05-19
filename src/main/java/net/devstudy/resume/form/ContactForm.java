package net.devstudy.resume.form;

import javax.validation.Valid;

import net.devstudy.resume.entity.Contact;

public class ContactForm {
	
	@Valid
	private Contact contact;
	
	public ContactForm() {
		super();
	}

	public ContactForm(Contact contact) {
		super();
		this.contact = contact;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}
}
