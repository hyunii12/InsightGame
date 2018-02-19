package dao;

import java.util.HashMap;
import java.util.List;

import model.StreamerPopularity;

public interface IStreamerpopDao {
	public List<StreamerPopularity> selectAllstreamerpop(String sname);
	public List<String> selectAlltitle(String sname);
	public List<StreamerPopularity> selectDaystreamerpop(HashMap<String, String> map);
	public List<String> selectdaytitle(HashMap<String, String> map);
}
