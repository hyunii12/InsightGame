package dao;

import java.util.HashMap;
import java.util.List;

public interface IGameIssuesDao {
	public List<HashMap<String, Object>> selectTop20All();
	public List<HashMap<String, Object>> selectTop20Today();
	public List<HashMap<String, Object>> selectTop10WithInterval();
}
