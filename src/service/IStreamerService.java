package service;

import java.util.HashMap;
import java.util.List;

import model.Clip;
import model.Streamer;
import model.Tgd;

public interface IStreamerService {
	
	public Streamer getStreamerByName(String strName);
	public List<Clip> getstreamerclip(String cp_display);
	public List<Integer> getstreamergraph(String tg_name);
	
}
