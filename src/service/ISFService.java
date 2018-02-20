package service;

import java.util.List;

import model.streamerFollower;

public interface ISFService {
	
	public Integer getstreamertoview(String ss, String ddd);
	public List<streamerFollower> getstreamerfowday(String str_name);
}
