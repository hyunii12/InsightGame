package service;

import java.util.List;

import model.Member;

public interface IMemberService {

	// 회원가입
	public void join(Member member);

	// 회원한명 정보
	public Member getMemeber(int mId);
	
	// 모든회원정보
	public List<Member> getMemberList();

	public int updateMember(Member member);

	public int deleteMember(int mId);

	public boolean login(String mEmail, String mPassword);

}
