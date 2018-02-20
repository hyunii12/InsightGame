package model;

public class streamerFollower {
	
	private String str_id;
	private String str_name;
	private String str_followers_num;
	private String str_date;
	
	public String getStr_id() {
		return str_id;
	}
	public void setStr_id(String str_id) {
		this.str_id = str_id;
	}
	public String getStr_name() {
		return str_name;
	}
	public void setStr_name(String str_name) {
		this.str_name = str_name;
	}
	public String getStr_followers_num() {
		return str_followers_num;
	}
	public void setStr_followers_num(String str_followers_num) {
		this.str_followers_num = str_followers_num;
	}
	public String getStr_date() {
		return str_date;
	}
	public void setStr_date(String str_date) {
		this.str_date = str_date;
	}
	
	@Override
	public String toString() {
		return "streamerFollower [str_id=" + str_id + ", str_name=" + str_name + ", str_followers_num="
				+ str_followers_num + ", str_date=" + str_date + "]";
	}
	
	
	
	
	

}
