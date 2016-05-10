package net.devstudy.resume.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="account")
public class Account {
	
	@Id
	@Column(name ="id")
	private int id;
	
	@Column(name ="uid")
	private int uid;
	
	@Column(name ="first_name")
	private String firstName;
	
	@Column(name ="ilast_named")
	private String lastName;
	
	@Column(name ="birth_day")
	private String birthDay;
	
	@Column(name ="phone")
	private int phone;
	
	@Column(name ="email")
	private String email;
	
	@Column(name ="country")
	private String country;
	
	@Column(name ="city")
	private String city;
	
	@Column(name ="objective")
	private String objective;
	
	@Column(name ="summary")
	private String summary;
	
	@Column(name ="large_photo")
	private String largePhoto;
	
	@Column(name ="small_photo")
	private String smallPhoto;
	
	@Column(name ="info")
	private String info;
	
	@Column(name ="password")
	private String password;
	
	@Column(name ="completed")
	private boolean completed;
	
	@Column(name ="created")
	private String created;
	
	public String getBirthDay() {
		return birthDay;
	}
	
	public String getCity() {
		return city;
	}
	
	public String getCountry() {
		return country;
	}
	
	public String getCreated() {
		return created;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public long getId() {
		return id;
	}
	
	public String getInfo() {
		return info;
	}
	
	public String getLargePhoto() {
		return largePhoto;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public String getObjective() {
		return objective;
	}
	
	public String getPassword() {
		return password;
	}
	
	public int getPhone() {
		return phone;
	}
	
	public String getSmallPhoto() {
		return smallPhoto;
	}
	
	public String getSummary() {
		return summary;
	}
	
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	
	public long getUid() {
		return uid;
	}
	
	public boolean isCompleted() {
		return completed;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public void setCreated(String created) {
		this.created = created;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setInfo(String info) {
		this.info = info;
	}
	
	public void setLargePhoto(String large_photo) {
		this.largePhoto = large_photo;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setObjective(String objective) {
		this.objective = objective;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	public void setSmallPhoto(String small_photo) {
		this.smallPhoto = small_photo;
	}
	
	public void setSummary(String summary) {
		this.summary = summary;
	}
	
	public void setUid(int uid) {
		this.uid = uid;
	}
	
}
