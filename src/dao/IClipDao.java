package dao;

import java.util.HashMap;
import java.util.List;

import model.Clip;


public interface IClipDao {

	public List<Clip> selectcliplist();
	public List<Clip> selectstreamerclip(String cp_display);
}
