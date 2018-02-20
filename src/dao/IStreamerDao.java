package dao;

import java.util.HashMap;
import java.util.List;

import model.Board;
import model.Clip;
import model.Streamer;
import model.Tgd;

public interface IStreamerDao {
	
	public int insertStreamerInfo(Streamer streamer);
	public int updateStreamerInfo(Streamer streamer);
	public int deleteStreamerInfo(int siId);
	//public Streamer selectStreamerInfoByStrName(String strName);
	public HashMap<String, Object> selectStreamerInfoBySiId(int siId);
	public Streamer selectStreamerInfoByStrName(String strName);
	public List<HashMap<String, Object>> selectStreamerInfoList();
	
	
	public List<Clip> selectstreamerclip(String cp_display);
	public List<Tgd> selectstreamerlist(HashMap<String, String> map);

}
