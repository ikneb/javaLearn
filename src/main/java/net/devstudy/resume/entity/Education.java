package net.devstudy.resume.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="education")
public class Education {
	
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="id_account")
	private int idAccount;
	
	@Column(name="summery")
	private String summery;
	
	@Column(name="begin_year")
	private Calendar beginYear;
	
	@Column(name="finish_year")
	private Calendar finishYear;
	
	@Column(name="university")
	private String university;
	
	@Column(name="faculti")
	private String faculti;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}

	public String getSummery() {
		return summery;
	}

	public void setSummery(String summery) {
		this.summery = summery;
	}

	public Calendar getBeginYear() {
		return beginYear;
	}

	public void setBeginYear(Calendar beginYear) {
		this.beginYear = beginYear;
	}

	public Calendar getFinishYear() {
		return finishYear;
	}

	public void setFinishYear(Calendar finishYear) {
		this.finishYear = finishYear;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getFaculti() {
		return faculti;
	}

	public void setFaculti(String faculti) {
		this.faculti = faculti;
	}

}
