package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ITwgameDao;
import model.twgame;



@Service("twgameService")
public class TwgameServiceImpl implements ITwgameService {
	
	@Autowired
	private ITwgameDao twgameDao;

	@Override
	public List<twgame> gettwgamelist() {
		// TODO Auto-generated method stub
		return twgameDao.selectAllgame();
	}
	
	

}
