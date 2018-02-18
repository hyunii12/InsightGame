package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IGenreRankingDao;
import model.GenreRanking;



@Service("GenrerankingService")
public class GenrerankingService implements IGenrerankingService {
	
	@Autowired
	private IGenreRankingDao genrerankingDao;

	@Override
	public List<GenreRanking> getfpsList(String day) {
		// TODO Auto-generated method stub
		return genrerankingDao.selectfpsRanking(day);
	}

	@Override
	public List<GenreRanking> getmmorpgList(String day) {
		// TODO Auto-generated method stub
		return genrerankingDao.selectmmorpgRanking(day);
	}

	@Override
	public List<GenreRanking> getactionList(String day) {
		// TODO Auto-generated method stub
		return genrerankingDao.selectactionRanking(day);
	}

	@Override
	public List<GenreRanking> getboard_puzzle_musicList(String day) {
		// TODO Auto-generated method stub
		return genrerankingDao.selectboard_puzzle_musicRanking(day);
	}

	@Override
	public List<GenreRanking> getsportList(String day) {
		// TODO Auto-generated method stub
		return genrerankingDao.selectsportRanking(day);
	}

	
	
	

}
