package service;

import java.util.List;

import model.GenreRanking;


public interface IGenrerankingService {
	
	public List<GenreRanking> getfpsList(String day);
	public List<GenreRanking> getmmorpgList(String day);
	public List<GenreRanking> getactionList(String day);
	public List<GenreRanking> getboard_puzzle_musicList(String day);
	public List<GenreRanking> getsportList(String day);

}
