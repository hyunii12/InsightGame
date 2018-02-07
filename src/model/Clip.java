package model;

public class Clip {

	private String cp_id; 
	private String cp_display;
	private String cp_title;  
	private String cp_game;   
	private String cp_img;    
	private String cp_view;   
	private String cp_create; 
	private String cp_url;
	public String getCp_id() {
		return cp_id;
	}
	public void setCp_id(String cp_id) {
		this.cp_id = cp_id;
	}
	public String getCp_display() {
		return cp_display;
	}
	public void setCp_display(String cp_display) {
		this.cp_display = cp_display;
	}
	public String getCp_title() {
		return cp_title;
	}
	public void setCp_title(String cp_title) {
		this.cp_title = cp_title;
	}
	public String getCp_game() {
		return cp_game;
	}
	public void setCp_game(String cp_game) {
		this.cp_game = cp_game;
	}
	public String getCp_img() {
		return cp_img;
	}
	public void setCp_img(String cp_img) {
		this.cp_img = cp_img;
	}
	public String getCp_view() {
		return cp_view;
	}
	public void setCp_view(String cp_view) {
		this.cp_view = cp_view;
	}
	public String getCp_create() {
		return cp_create;
	}
	public void setCp_create(String cp_create) {
		this.cp_create = cp_create;
	}
	public String getCp_url() {
		return cp_url;
	}
	public void setCp_url(String cp_url) {
		this.cp_url = cp_url;
	}
	@Override
	public String toString() {
		return "Clip [cp_id=" + cp_id + ", cp_display=" + cp_display + ", cp_title=" + cp_title + ", cp_game=" + cp_game
				+ ", cp_img=" + cp_img + ", cp_view=" + cp_view + ", cp_create=" + cp_create + ", cp_url=" + cp_url
				+ "]";
	}
	
	
	
}
