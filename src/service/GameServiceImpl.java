package service;

import org.springframework.beans.factory.annotation.Autowired;

import dao.IGameDao;
import model.Game;

public class GameServiceImpl implements IGameService{
	@Autowired
	private IGameDao dao;
	
	@Override
	public Game selectGameInfo(String title) {
		return dao.selectGameInfo(title);
	}
}
