package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Hobby;

public class HobbiesForm implements Serializable{

	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Hobby> items = new ArrayList<>();
	
	public HobbiesForm() {
		super();
	}

	public HobbiesForm(List<Hobby> items) {
		super();
		this.items = items;
	}

	public List<Hobby> getItems() {
		return items;
	}

	public void setItems(List<Hobby> items) {
		this.items = items;
	}
}
