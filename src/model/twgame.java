package model;

public class twgame {
	private String Twgname;
	private int Twgview;
	private String Twgdate;
	
	public String getTwgname() {
		return Twgname;
	}
	public void setTwgname(String twgname) {
		Twgname = twgname;
	}
	public int getTwgview() {
		return Twgview;
	}
	public void setTwgview(int twgview) {
		Twgview = twgview;
	}
	public String getTwgdate() {
		return Twgdate;
	}
	public void setTwgdate(String twgdate) {
		Twgdate = twgdate;
	}
	@Override
	public String toString() {
		return "twgame [Twgname=" + Twgname + ", Twgview=" + Twgview + ", Twgdate=" + Twgdate + "]";
	}
	
}	
