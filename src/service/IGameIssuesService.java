package service;

import java.util.HashMap;
import java.util.List;

public interface IGameIssuesService {
	public List<HashMap<String, Double>> getGameIssuesListByTitle(String title);
	public List<HashMap<String, Object>> getGameIssuesListToday();
	public HashMap<String, Object> getTopGamesIssuesList();
}
