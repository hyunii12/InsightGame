package service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ISFDao;



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

	

}
