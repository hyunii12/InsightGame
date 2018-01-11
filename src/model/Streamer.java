package model;

public class Streamer {
	
	private int siId;
	private String strName;
	private String strTwitchUrl;
	private String strTgdUrl;
	private String strPicture;
	private String strGameCategory;
	
	public int getSiId() {
		return siId;
	}
	public void setSiId(int siId) {
		this.siId = siId;
	}
	public String getStrName() {
		return strName;
	}
	public void setStrName(String strName) {
		this.strName = strName;
	}
	public String getStrTwitchUrl() {
		return strTwitchUrl;
	}
	public void setStrTwitchUrl(String strTwitchUrl) {
		this.strTwitchUrl = strTwitchUrl;
	}
	public String getStrTgdUrl() {
		return strTgdUrl;
	}
	public void setStrTgdUrl(String strTgdUrl) {
		this.strTgdUrl = strTgdUrl;
	}
	public String getStrPicture() {
		return strPicture;
	}
	public void setStrPicture(String strPicture) {
		this.strPicture = strPicture;
	}
	public String getStrGameCategory() {
		return strGameCategory;
	}
	public void setStrGameCategory(String strGameCategory) {
		this.strGameCategory = strGameCategory;
	}
	
	@Override
	public String toString() {
		return "Streamer [siId=" + siId + ", strName=" + strName + ", strTwitchUrl=" + strTwitchUrl + ", strTgdUrl="
				+ strTgdUrl + ", strPicture=" + strPicture + ", strGameCategory=" + strGameCategory + "]";
	}
	

}
