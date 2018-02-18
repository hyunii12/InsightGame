package model;

public class StreamerPopularity {

	private String sname;
	private String title;
	private String day;
	private int views;
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	@Override
	public String toString() {
		return "StreamerPopularity [sname=" + sname + ", title=" + title + ", day=" + day + ", views=" + views + "]";
	}
		
}
