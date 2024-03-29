package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Language;

public class LanguageForm implements Serializable{
	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Language> items = new ArrayList<>();
	
	public LanguageForm() {
		super();
	}

	public LanguageForm(List<Language> items) {
		super();
		this.items = items;
	}

	public List<Language> getItems() {
		return items;
	}

	public void setItems(List<Language> items) {
		this.items = items;
	}

}
