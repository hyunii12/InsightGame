package service;

import java.util.ArrayList;
import java.util.List;

import model.twgame;

public interface ITwgameService {
	
	public List<twgame> gettwgamelist();
	public List<Integer> getgametoview(String d);
	 
}
