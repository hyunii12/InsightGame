package model;

import java.util.Date;

public class Game {
	private int giId;
	private String title;
	private String platform;
	private String genre;
	private Date release;
	private int age;
	private String production;
	private String picture;
	private String siteUrl;
	private int score;
	public int getGiId() {
		return giId;
	}
	public void setGiId(int giId) {
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
	public Date getRelease() {
		return release;
	}
	public void setRelease(Date release) {
		this.release = release;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getProduction() {
		return production;
	}
	public void setProduction(String production) {
		this.production = production;
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
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Game [giId=" + giId + ", title=" + title + ", platform=" + platform + ", genre=" + genre + ", release="
				+ release + ", age=" + age + ", production=" + production + ", picture=" + picture + ", siteUrl="
				+ siteUrl + ", score=" + score + "]";
	}
	
}
