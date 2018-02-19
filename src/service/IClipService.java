package service;

import java.util.List;

import model.Clip;

public interface IClipService {

	public List<Clip> getcliplist();
	public List<Clip> getstreamerclip(String cp_display);	
	
}
