package dao;

import java.util.List;

import model.Member;

public interface IMemberDao {
	
	public List<Member> selectAllMember();
	public int insertMember(Member member);
	public int updateMember(Member member);
	public int deleteMember(int mId);
	public Member selectOneMember(int mId);
	public Member selectOneEmail(String mEmail);
	

}
