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
	public HashMap<String, Object> getTopGamesIssuesList() {
		// TODO Auto-generated method stub
//		List<String> topGames = new ArrayList<>(); 
		HashMap<String, Object> issueScores = new HashMap<>();
		for(HashMap<String, Object> game : getGameIssuesListToday()) {
			List<HashMap<String, Double>> temp = getGameIssuesListByTitle(game.get("title").toString());
			issueScores.put(game.get("title").toString(), temp);
		}
		return issueScores;
	}
	@Override
	public List<HashMap<String, Double>> getGameIssuesListByTitle(String title) {
		// TODO Auto-generated method stub
//		List<HashMap<String, Double>> scoreByDate = new ArrayList<>();
//		for(String title: topGames) {
//			for(HashMap<String, Double> data : gameIssuesDao.selectListByTitle(title)) {
//				scoreByDate.add()
//			}
//		}
		return gameIssuesDao.selectListByTitle(title);
	}
	


}
