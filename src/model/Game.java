package model;

import java.util.Date;

public class Game {
	private String giId;
	private String title;
	private String platform;
	private String genre;
	private String production;
	private String publisher;
	private String age;
	private String release;
	private String picture;
	private String siteUrl;
	

	public String getGiId() {
		return giId;
	}


	public void setGiId(String giId) {
		this.giId = giId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getPlatform() {
		return platform;
	}


	public void setPlatform(String platform) {
		this.platform = platform;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getProduction() {
		return production;
	}


	public void setProduction(String production) {
		this.production = production;
	}


	public String getPublisher() {
		return publisher;
	}


	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getRelease() {
		return release;
	}


	public void setRelease(String release) {
		this.release = release;
	}


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;
	}


	public String getSiteUrl() {
		return siteUrl;
	}


	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}


	@Override
	public String toString() {
		return "Game [giId=" + giId + ", title=" + title + ", platform=" + platform + ", genre=" + genre
				+ ", production=" + production + ", publisher=" + publisher + ", age=" + age + ", release=" + release
				+ ", picture=" + picture + ", siteUrl=" + siteUrl + "]";
	}
	
	
}
