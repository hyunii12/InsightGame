package model;

public class Member {
	
	private int mId;
	private String mEmail;
	private String mPasword;
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
		return mPasword;
	}
	public void setmPasword(String mPasword) {
		this.mPasword = mPasword;
	}
	
	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mEmail=" + mEmail + ", mPasword=" + mPasword + "]";
	}
	
	
	


}
