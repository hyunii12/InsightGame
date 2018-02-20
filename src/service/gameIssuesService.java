package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IGameIssuesDao;

@Service
public class gameIssuesService implements IGameIssuesService{
	@Autowired
	IGameIssuesDao gameIssuesDao;
	@Override
	public List<HashMap<String, Object>> getGameIssuesListToday() {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> results = gameIssuesDao.selectTop20Today();
		return results;
	}
	
	@Override
	public List<HashMap<String, Object>> getAllGameIssuesListInterval(String date) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> list = gameIssuesDao.selectTop10WithInterval();
		List<HashMap<String, Object>> onedaylist = null;
		List<HashMap<String, Object>> listBydate = new ArrayList<>();
		for(int j=0; j < 5; j++) {
			onedaylist = new ArrayList<>();
			for(int i=10*j; i < 10*(1+j); i++) {
				((HashMap<String,Object>) onedaylist).put("issuesRank_"+i, list.get(i));
			}
			((HashMap<String,Object>) listBydate).put("DAY"+j, onedaylist);
		}
		
		return listBydate;
	}


}
