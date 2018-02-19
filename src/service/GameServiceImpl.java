package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IGameDao;
import model.Game;

@Service("gameService")
public class GameServiceImpl implements IGameService{
	@Autowired
	private IGameDao dao;
	
	@Override
	public Game selectGameInfo(String title) {
		return dao.selectGameInfo(title);
	}
}
