package service;

import java.util.HashMap;
import java.util.List;

import model.Game;

public interface IGameService {

	public Game selectGameInfo(String title);
	public List<Game> selectGameTitleList();
}
