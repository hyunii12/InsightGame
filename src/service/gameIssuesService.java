package service;

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
	public List<HashMap<String, Object>> getAllGameIssuesList() {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> results = gameIssuesDao.selectAll();
		return results;
	}

	@Override
	public List<HashMap<String, Object>> getGameIssuesListWithInterval(String date) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> results = gameIssuesDao.selectWithInterval();
		return results;
	}

}
