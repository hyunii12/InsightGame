package model;

public class Streamer {
	
	private String siId;
	private String strTwitchUrl;
	private String strTgdUrl;
	private String strPicture;
	private String strName;
	private String strGameCategory;
	public String getSiId() {
		return siId;
	}
	public void setSiId(String siId) {
		this.siId = siId;
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
	public String getStrName() {
		return strName;
	}
	public void setStrName(String strName) {
		this.strName = strName;
	}
	public String getStrGameCategory() {
		return strGameCategory;
	}
	public void setStrGameCategory(String strGameCategory) {
		this.strGameCategory = strGameCategory;
	}
	@Override
	public String toString() {
		return "Streamer [siId=" + siId + ", strTwitchUrl=" + strTwitchUrl + ", strTgdUrl=" + strTgdUrl
				+ ", strPicture=" + strPicture + ", strName=" + strName + ", strGameCategory=" + strGameCategory + "]";
	}
}
