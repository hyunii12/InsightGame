package service;

import java.util.HashMap;
import java.util.List;

public interface IGameIssuesService {
	public List<HashMap<String, Object>> getAllGameIssuesList();
	public List<HashMap<String, Object>> getGameIssuesListWithInterval(String date);
}
