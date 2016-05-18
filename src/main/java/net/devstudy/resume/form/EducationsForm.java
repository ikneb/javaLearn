package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Education;

public class EducationsForm implements Serializable {
	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Education> items = new ArrayList<>();
	
	public EducationsForm() {
		super();
	}

	public EducationsForm(List<Education> items) {
		super();
		this.items = items;
	}

	public List<Education> getItems() {
		return items;
	}

	public void setItems(List<Education> items) {
		this.items = items;
	}

}
