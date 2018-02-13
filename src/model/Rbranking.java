package model;

public class Rbranking {

	private String day;
	private int rank;
	private String name;
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Rbranking [day=" + day + ", rank=" + rank + ", name=" + name + "]";
	}
	
}
