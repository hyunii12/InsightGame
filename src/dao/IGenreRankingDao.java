package dao;

import java.util.List;

import model.GenreRanking;

public interface IGenreRankingDao {
	
	public List<GenreRanking> selectfpsRanking(String day);
	public List<GenreRanking> selectmmorpgRanking(String day);
	public List<GenreRanking> selectactionRanking(String day);
	public List<GenreRanking> selectboard_puzzle_musicRanking(String day);
	public List<GenreRanking> selectsportRanking(String day);

}
