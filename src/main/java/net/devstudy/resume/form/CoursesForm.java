package net.devstudy.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import net.devstudy.resume.entity.Course;

public class CoursesForm implements Serializable{
	private static final long serialVersionUID = 4135568197764740034L;
	@Valid
	private List<Course> items = new ArrayList<>();
	
	public CoursesForm() {
		super();
	}

	public CoursesForm(List<Course> items) {
		super();
		this.items = items;
	}

	public List<Course> getItems() {
		return items;
	}

	public void setItems(List<Course> items) {
		this.items = items;
	}

}
