package net.devstudy.resume.entity;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.joda.time.LocalDate;
import org.joda.time.Years;
/*import org.springframework.data.elasticsearch.annotations.Document;

import com.fasterxml.jackson.annotation.JsonIgnore;*/

import net.devstudy.resume.annotation.constraints.Adulthood;
import net.devstudy.resume.annotation.constraints.EnglishLanguage;
import net.devstudy.resume.annotation.constraints.Phone;


@Entity
@Table(name = "account")
/*@Document(indexName="account")
*/
public class Account extends AbstractEntity<Long> implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "ACCOUNT_ID_GENERATOR", sequenceName = "ACCOUNT_SEQ", allocationSize=1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ACCOUNT_ID_GENERATOR")
	@Column(unique = true, nullable = false)
	private Long id;

	@Column(name = "birth_day")
	@Adulthood
	private Date birthDay;

	@Column
	@EnglishLanguage
	@Size(min=1)
	private String city;

	@Column
	@EnglishLanguage
	@Size(min=1)
	private String country;

	@Column(name = "first_name", nullable = false, length = 50)
	@EnglishLanguage
	@Size(min=1)
	private String firstName;

	@Column(name = "last_name", nullable = false, length = 50)
	@EnglishLanguage
	@Size(min=1)
	private String lastName;

	@Column(length = 2147483647)
	@EnglishLanguage
	@Size(min=1)
	private String objective;

	@Column(name = "large_photo", length = 255)
	/*@JsonIgnore*/
	private String largePhoto;

	@Column(name = "small_photo", length = 255)
	private String smallPhoto;

	@Column(length = 20)
	@Phone
	@Size(max=17)
	/*@JsonIgnore*/
	private String phone;

	@Column(length = 100)
	@EnglishLanguage
	@Size(min=1)
	@Email
	/*@JsonIgnore*/
	private String email;
	
	@Column
	@EnglishLanguage
	@Size(min=1)
	private String info;

	@Column(length = 2147483647)
	@EnglishLanguage
	@Size(min=1)
	private String summary;

	@Column(nullable = false, length = 100)
	private String uid;
	
	@Column(nullable = false, length = 100)
	/*@JsonIgnore*/
	private String password;
	
	@Column(nullable = false)
	/*@JsonIgnore*/
	private boolean completed;
	
	@Column(insertable=false)
	/*@JsonIgnore*/
	private Timestamp created;

	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	private List<Certificate> certificates;

	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("finishYear DESC, beginYear DESC, id DESC")
	/*@JsonIgnore*/
	private List<Education> educations;

	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("name ASC")
	/*@JsonIgnore*/
	private List<Hobby> hobbies;

	@OneToMany(mappedBy = "account",  cascade={CascadeType.MERGE, CascadeType.PERSIST})
	private List<Language> languages;

	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("finishDate DESC")
	private List<Practic> practics;

	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("id ASC")
	private List<Skill> skills;
	
	@OneToMany(mappedBy = "account", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("finishDate DESC")
	private List<Course> courses;
	
	@Embedded
	private Contact contact;

	public Account() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getBirthDay() {
		return this.birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getObjective() {
		return this.objective;
	}

	public void setObjective(String objective) {
		this.objective = objective;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getUid() {
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public List<Certificate> getCertificates() {
		return this.certificates;
	}

	public void setCertificates(List<Certificate> certificates) {
		this.certificates = certificates;
		updateListSetAccount(this.certificates);
	}

	public List<Education> getEducations() {
		return this.educations;
	}

	public void setEducations(List<Education> educations) {
		this.educations = educations;
		updateListSetAccount(this.educations);
	}

	public List<Hobby> getHobbies() {
		return this.hobbies;
	}

	public void setHobbies(List<Hobby> hobbies) {
		this.hobbies = hobbies;
		updateListSetAccount(this.hobbies);
	}

	public List<Language> getLanguages() {
		return this.languages;
	}

	public void setLanguages(List<Language> languages) {
		this.languages = languages;
		updateListSetAccount(this.languages);
	}

	public List<Practic> getPractics() {
		return this.practics;
	}

	public void setPractics(List<Practic> practics) {
		this.practics = practics;
		updateListSetAccount(this.practics);
	}

	public List<Skill> getSkills() {
		return this.skills;
	}

	public void setSkills(List<Skill> skills) {
		this.skills = skills;
		updateListSetAccount(this.skills);
	}
	
	
	
	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
		updateListSetAccount(this.courses);
	}

	public String getLargePhoto() {
		return largePhoto;
	}

	public void setLargePhoto(String largePhoto) {
		this.largePhoto = largePhoto;
	}

	public String getSmallPhoto() {
		return smallPhoto;
	}

	public void setSmallPhoto(String smallPhoto) {
		this.smallPhoto = smallPhoto;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}

	public Timestamp getCreated() {
		return created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	@Transient
	public String getFullName() {
		return firstName + " " + lastName;
	}
	
	@Transient
	public int getAge(){
		LocalDate birthdate = new LocalDate (birthDay);
		LocalDate now = new LocalDate();
		Years age = Years.yearsBetween(birthdate, now);
		return age.getYears();
	}
	
	@Transient
	public String getAccountPhoto(){
		if(largePhoto != null) {
			return largePhoto;
		} else {
			return "/static/img/account-placeholder.png";
		}
	}
	
	public String updateAccountPhotos(String largePhoto, String smallPhoto) {
		String oldLargeImage = this.largePhoto;
		setLargePhoto(largePhoto);
		setSmallPhoto(smallPhoto);
		return oldLargeImage;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	
	public Contact getContacts() {
		if(contact == null) {
			contact = new Contact();
		}
		return contact;
	}

	public void setContacts(Contact contact) {
		this.contact = contact;
	}
	
	private void updateListSetAccount(List<? extends AccountEntity> list){
		if(list != null){
			for(AccountEntity entity : list){
				entity.setAccount(this);
			}
		}
	}
}