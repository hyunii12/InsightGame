package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ISFDao;
import model.streamerFollower;



@Service("SFService")
public class SFServiceImpl implements ISFService {
	
	@Autowired
	private ISFDao sfDao;

	
	@Override
	public Integer getstreamertoview(String ss, String ddd) {
		// TODO Auto-generated method stub
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", ss);
		map.put("day", ddd);
		return sfDao.streamertoview(map);
	}

	@Override
	public List<streamerFollower> getstreamerfowday(String str_name) {

		return sfDao.streamerfowday(str_name);
	}	

}
