package model;

public class Schdule {
	
	private String scId;
	private String scTitle;
	private String scStartDate;
	private String scEndDate;
	
	public String getScId() {
		return scId;
	}
	public void setScId(String scId) {
		this.scId = scId;
	}
	public String getScTitle() {
		return scTitle;
	}
	public void setScTitle(String scTitle) {
		this.scTitle = scTitle;
	}
	public String getScStartDate() {
		return scStartDate;
	}
	public void setScStartDate(String scStartDate) {
		this.scStartDate = scStartDate;
	}
	public String getScEndDate() {
		return scEndDate;
	}
	public void setScEndDate(String scEndDate) {
		this.scEndDate = scEndDate;
	}
	
	@Override
	public String toString() {
		return "Schdule [scId=" + scId + ", scTitle=" + scTitle + ", scStartDate=" + scStartDate + ", scEndDate="
				+ scEndDate + "]";
	}
	
	
	

}
