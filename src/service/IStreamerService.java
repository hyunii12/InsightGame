package service;

import java.util.HashMap;
import java.util.List;

import model.Clip;
import model.Streamer;

public interface IStreamerService {
	
	public Streamer getStreamerByName(String strName);
	public List<Clip> getstreamerclip(String cp_display);
	

}
