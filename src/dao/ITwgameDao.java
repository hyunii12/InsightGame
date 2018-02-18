package dao;

import java.util.HashMap;
import java.util.List;

import model.twgame;

public interface ITwgameDao {
//	public List<twgame> selectAllgame();
//	public List<HashMap<String, Object>> selectgametoview(String d);
	public Integer gametoview(HashMap<String, String> map);
	
}
