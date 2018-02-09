package dao;

import java.util.List;

import model.twgame;

public interface ITwgameDao {
	public List<twgame> selectAllgame();
	public List<Integer> gametoview(String d);
}
