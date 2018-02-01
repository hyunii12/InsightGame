package service;

import java.util.List;

import model.Schdule;

public interface ISchduleService {
	
	
	public List<Schdule> getSchduleList();
	public Schdule getSchdule(String scId);
	public void deleteSchdule(String scId);
	public int modifySchdule(Schdule schdule);
	public void insertSchdule(Schdule schdule, String scId);


}
