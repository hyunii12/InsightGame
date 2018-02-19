package dao;

import java.util.List;

import model.Tgd;

public interface ITgdDao {
	public List<Tgd> selecttgdlist(String d);
//	public List<HashMap<String, Object>> getList_tgdCnts();
}
