package model;

public class Member {
	
	private int mId;
	private String mEmail;
	private String mPassword;
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmPasword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	
	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mEmail=" + mEmail + ", mPasword=" + mPassword + "]";
	}
	
	
	


}
