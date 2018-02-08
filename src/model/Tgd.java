package model;

public class Tgd {
	
	
	private String tg_name;
	private String tg_date;
	private String tg_title;
	private String tg_content;
	private int td_view;
	private int tg_like;
	
	public String getTg_name() {
		return tg_name;
	}
	public void setTg_name(String tg_name) {
		this.tg_name = tg_name;
	}
	public String getTg_date() {
		return tg_date;
	}
	public void setTg_date(String tg_date) {
		this.tg_date = tg_date;
	}
	public String getTg_title() {
		return tg_title;
	}
	public void setTg_title(String tg_title) {
		this.tg_title = tg_title;
	}
	public String getTg_content() {
		return tg_content;
	}
	public void setTg_content(String tg_content) {
		this.tg_content = tg_content;
	}
	public int getTd_view() {
		return td_view;
	}
	public void setTd_view(int td_view) {
		this.td_view = td_view;
	}
	public int getTg_like() {
		return tg_like;
	}
	public void setTg_like(int tg_like) {
		this.tg_like = tg_like;
	}
	@Override
	public String toString() {
		return "Tgd [ tg_name=" + tg_name + ", tg_date=" + tg_date + ", tg_title=" + tg_title
				+ ", tg_content=" + tg_content + ", td_view=" + td_view + ", tg_like=" + tg_like + "]";
	}
	
}
