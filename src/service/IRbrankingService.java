package service;

import java.util.List;

import model.Rbranking;

public interface IRbrankingService {
	
	public List<Rbranking> get3dsList(String day);
	public List<Rbranking> getmobileList(String day);
	public List<Rbranking> getpcList(String day);
	public List<Rbranking> getps4List(String day);
	public List<Rbranking> getpsvitaList(String day);
	public List<Rbranking> getswitchList(String day);
	public List<Rbranking> getxboxList(String day);

}
