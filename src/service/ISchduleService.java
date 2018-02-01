package service;

import java.util.List;

import model.Schdule;

public interface ISchduleService {
	
	
	public List<Schdule> getSchduleList();
	public Schdule getSchdule(String scId);


}
