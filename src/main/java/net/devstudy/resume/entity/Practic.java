package net.devstudy.resume.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="practic")
public class Practic {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="id_account")
	private int idAccount;
	
	@Column(name="position")
	private String position;
	
	@Column(name="company")
	private String company;
	
	@Column(name="begin_date")
	private Calendar beginDate;
	
	@Column(name="finish_date")
	private Calendar finishDate;
	
	@Column(name="responsibiliti")
	private String responsibiliti;
	
	@Column(name="demo")
	private String demo;
	
	@Column(name="src")
	private String src;
	

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

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Calendar getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Calendar beginDate) {
		this.beginDate = beginDate;
	}

	public String getResponsibiliti() {
		return responsibiliti;
	}

	public void setResponsibiliti(String responsibiliti) {
		this.responsibiliti = responsibiliti;
	}

	public String getDemo() {
		return demo;
	}

	public void setDemo(String demo) {
		this.demo = demo;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

}
