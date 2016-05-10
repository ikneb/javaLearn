package net.devstudy.resume.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Contact {
	
	@Column(name = "skype")
	private String skype;
	
	@Column(name = "vcontakte")
	private String vcontakte;
	
	@Column(name = "facebook")
	private String facebook;
	
	@Column(name = "lincedin")
	private String lincedin;
	
	@Column(name = "githab")
	private String githab;
	
	@Column(name = "stacoverflow")
	private String stacoverflow;
	
	
	public String getFacebook() {
		return facebook;
	}
	
	public String getGithab() {
		return githab;
	}
	
	public String getLincedin() {
		return lincedin;
	}
	
	public String getSkype() {
		return skype;
	}
	
	public String getStacoverflow() {
		return stacoverflow;
	}
	
	public String getVcontakte() {
		return vcontakte;
	}
	
	public void setGithab(String githab) {
		this.githab = githab;
	}
	
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	
	public void setLincedin(String lincedin) {
		this.lincedin = lincedin;
	}
	
	public void setSkype(String skype) {
		this.skype = skype;
	}
	
	public void setStacoverflow(String stacoverflow) {
		this.stacoverflow = stacoverflow;
	}
	
	public void setVcontakte(String vcontakte) {
		this.vcontakte = vcontakte;
	}

}
