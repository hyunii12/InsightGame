package service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IStreamerpopDao;
import model.Clip;
import model.StreamerPopularity;

@Service("streamerpopService")
public class IStreamerpopServiceImpl implements IStreamerpopService{
	
	@Autowired
	private IStreamerpopDao streamerpopDao;

	@Override
	public List<StreamerPopularity> getstreamerpop(String sname) {
		
		return streamerpopDao.selectAllstreamerpop(sname);
	}

	@Override
	public List<String> getAlltitle(String sname) {
		
		return streamerpopDao.selectAlltitle(sname);
	}

	@Override
	public List<StreamerPopularity> getstreamerDaypop(String sname) {
		
		List<StreamerPopularity> list = new ArrayList<StreamerPopularity>();
		HashMap<String, String> map = new HashMap<String, String>();

		LocalDateTime now = LocalDateTime.now();
		LocalDateTime end = now.minusDays(1);
		DateTimeFormatter fomatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String today = now.format(fomatter);
		String pr = end.format(fomatter);
		
		map.put("sname",sname);
		map.put("day",pr);
		
		return streamerpopDao.selectDaystreamerpop(map);
	}

	@Override
	public List<String> getDaytitle(String sname) {
		
		List<String> title = new ArrayList<String>();
		HashMap<String, String> map2 = new HashMap<String, String>();

		LocalDateTime now = LocalDateTime.now();
		LocalDateTime end = now.minusDays(1);
		DateTimeFormatter fomatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String today = now.format(fomatter);
		String pr = end.format(fomatter);
		
		map2.put("sname",sname);
		map2.put("day",pr);
		
		return streamerpopDao.selectdaytitle(map2);
	}
	
		
}
