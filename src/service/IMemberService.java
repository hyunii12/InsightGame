package service;

import java.util.List;

import model.Member;

public interface IMemberService {
	
	//ȸ������
		public void join(Member member);
		
		//select one
		public Member getMemeber(int mId);
		
		public List<Member> getMemberList();
		public int updateMember(Member member);
		public int deleteMember(int mId);
		
		//���üũ
		public boolean checkPassword(String mEmail, String mPassword);

}
