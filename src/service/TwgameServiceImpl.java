package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ITwgameDao;



@Service("twgameService")
public class TwgameServiceImpl implements ITwgameService {
	
	@Autowired
	private ITwgameDao twgameDao;

//	@Override
//	public List<twgame> gettwgamelist() {
//		// TODO Auto-generated method stub
//		return twgameDao.selectAllgame();
//	}
	
	@Override
	public Integer getgametoview(String gg,String dd) {
	
		HashMap<String, String> map2 = new HashMap<String, String>();
	    
		map2.put("name", gg);
		map2.put("day", dd);
		
		return twgameDao.gametoview(map2);
	}

//	@Override
//	public List<HashMap<String, Object>> getselectgametoview(String d) {
//		// TODO Auto-generated method stub
//		return twgameDao.selectgametoview("2018-02-09");
//	}
	
	

}
