package service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IStreamerDao;
import model.Clip;
import model.Streamer;
import model.Tgd;

@Service("streamerService")
public class StreamerServiceImpl implements IStreamerService {

	@Autowired
	private IStreamerDao dao;

	@Override
	public Streamer getStreamerByName(String strName) {
		// TODO Auto-generated method stub
		return dao.selectStreamerInfoByStrName(strName);
		// return null;
	}

	@Override
	public List<Clip> getstreamerclip(String cp_display) {
		// TODO Auto-generated method stub
		return dao.selectstreamerclip(cp_display);
	}

	@Override
	public List<Integer> getstreamergraph(String tg_name) {

		List<Tgd> list = new ArrayList<Tgd>();
		HashMap<String, String> map = new HashMap<String, String>();

		List<Integer> s = new ArrayList<Integer>();

		for (int i = 14; i > 1; i--) {

			LocalDateTime now = LocalDateTime.now();
			LocalDateTime end = now.minusDays(i);
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String formatDateTime = end.format(formatter);
			
			map.put("tg_name", tg_name);
			map.put("tg_date", formatDateTime);
			
			int t = dao.selectstreamerlist(map).size();
			s.add(t);
		}
		
		return s;
	}

}
