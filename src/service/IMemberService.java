package service;

import java.util.List;

import model.Member;

public interface IMemberService {
	
	//회원가입
		public void join(Member member);
		
		//select one
		public Member getMemeber(int mId);
		
		public List<Member> getMemberList();
		public int updateMember(Member member);
		public int deleteMember(int mId);
		
		//비번체크
		public boolean checkPassword(String mEmail, String mPassword);

}
