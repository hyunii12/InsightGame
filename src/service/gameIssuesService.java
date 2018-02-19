package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.IGameIssuesDao;

public class gameIssuesService implements IGameIssuesService{
	@Autowired
	IGameIssuesDao gameIssuesDao;
	
	@Override
	public HashMap<String, Object> getAllGameIssuesList() {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> results = gameIssuesDao.selectAll();
		for(HashMap<String, Object> map : results)
			System.out.println(map);
		return null;
	}

}
