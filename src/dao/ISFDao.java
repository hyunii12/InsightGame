package dao;

import java.util.HashMap;
import java.util.List;

import model.streamerFollower;

public interface ISFDao {
	
	public Integer streamertoview(HashMap<String, String> map);
	public List<streamerFollower> streamerfowday(String str_name);

}
