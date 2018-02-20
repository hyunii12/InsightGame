package service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IClipDao;
import dao.ITgdDao;
import model.Clip;
import model.Game;
import model.Tgd;


@Service("tgdService")
public class TgdServiceImpl implements ITgdService{

	@Autowired
	private ITgdDao tgdDao;
	
	@Override
	public List<Integer> gettgdlist() {
		List<Integer> s = new ArrayList<Integer>();
		for(int i=14; i>1; i--) {
			LocalDateTime now = LocalDateTime.now();
			LocalDateTime end = now.minusDays(i);
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String formatDateTime = end.format(formatter);
			System.out.println(formatDateTime);
			
			int t=tgdDao.selecttgdlist(formatDateTime).size();
			s.add(t);			
		}
		return s;
	}
	
	@Override
	public Tgd hottgd() {
		return tgdDao.hottgdlist();
	}
}

