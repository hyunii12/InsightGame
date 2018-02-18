package dao;

import java.util.List;

import model.Rbranking;

public interface IRbrankingDao {

	public List<Rbranking> selectxboxRanking(String day);
	public List<Rbranking> selectswitchRanking(String day);
	public List<Rbranking> selectps4Ranking(String day);
	public List<Rbranking> selectpsvitaRanking(String day);
	public List<Rbranking> selectpcRanking(String day);
	public List<Rbranking> selectmoblieRanking(String day);
	public List<Rbranking> select3dsRanking(String day);
	
}
