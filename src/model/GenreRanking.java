package model;

public class GenreRanking {
	
	private String name;
	private String day;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	@Override
	public String toString() {
		return "GenreRanking [name=" + name + ", day=" + day + "]";
	}
	
	
}
