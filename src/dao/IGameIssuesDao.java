package dao;

import java.util.HashMap;
import java.util.List;

public interface IGameIssuesDao {
	public List<HashMap<String, Object>> selectAll();
	public List<HashMap<String, Object>> selectWithInterval();
}
