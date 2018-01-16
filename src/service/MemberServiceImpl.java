package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IMemberDao;
import model.Member;

@Service("memberService")
public class MemberServiceImpl implements IMemberService{
	
	@Autowired
	private IMemberDao memberDao;

	@Override
	public void join(Member member) {
		// TODO Auto-generated method stub
		memberDao.insertMember(member);
		
	}

	@Override
	public Member getMemeber(int mId) {
		// TODO Auto-generated method stub
		return memberDao.selectOneMember(mId);
	}

	@Override
	public List<Member> getMemberList() {
		// TODO Auto-generated method stub
		return memberDao.selectAllMember();
	}

	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return memberDao.updateMember(member);
	}

	@Override
	public int deleteMember(int mId) {
		// TODO Auto-generated method stub
		return memberDao.deleteMember(mId);
	}

	@Override
	public boolean login(String mEmail, String mPassword) {
		// TODO Auto-generated method stub
		
		Member member = memberDao.selectOneEmail(mEmail);
		if(member.getmPasword().equals(mPassword))
			return true;
		else
			return false;
	}
	
	

	
	
	

	
}
