package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Practic;



public class PracticForm  implements Serializable{
	
	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Practic> items = new ArrayList<>();
	
	public PracticForm() {
		super();
	}

	public PracticForm(List<Practic> items) {
		super();
		this.items = items;
	}

	public List<Practic> getItems() {
		return items;
	}

	public void setItems(List<Practic> items) {
		this.items = items;
	}

}
