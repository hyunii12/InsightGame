package dao;

import java.util.HashMap;
import java.util.List;

import model.Game;

public interface IGameDao {
	/* 
	 * Game - insert, update, delete, select(one, all)
	 * select one : by giID, title, ...
	 */
	public int insertGameInfo(Game game);
	public int updateGameInfo(Game game);
	public int deleteGameInfo(int giId);
	public HashMap<String, Object> selectGameInfo(HashMap<String, Object> param);
	public List<HashMap<String, Object>> selectGameInfoList();
	
}
