package service;

import java.util.List;

import model.StreamerPopularity;

public interface IStreamerpopService {
	public List<StreamerPopularity> getstreamerpop(String sname);
	public List<String> getAlltitle(String sname);
	public List<StreamerPopularity> getstreamerDaypop(String sname);
	public List<String> getDaytitle(String sname);
	
}
