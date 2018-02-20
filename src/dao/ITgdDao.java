package dao;

import java.util.List;

import model.Tgd;

public interface ITgdDao {
	public List<Tgd> selecttgdlist(String d);
	public Tgd hottgdlist();

}
