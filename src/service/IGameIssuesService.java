package service;

import java.util.HashMap;
import java.util.List;

public interface IGameIssuesService {
	public List<HashMap<String, Object>> getGameIssuesListToday();
	public List<HashMap<String, Object>> getAllGameIssuesListInterval(String date);
}
