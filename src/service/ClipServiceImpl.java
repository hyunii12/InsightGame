package service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IClipDao;
import model.Clip;

@Service("clipService")
public class ClipServiceImpl implements IClipService{

	@Autowired
	private IClipDao clipDao;
	
	
	@Override
	public List<Clip> getcliplist() {
		
		LocalDateTime now = LocalDateTime.now();
		LocalDateTime yesterday = now.minusDays(1);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formatDateTime = yesterday.format(formatter);
		
		return clipDao.selectcliplist(formatDateTime);
		
	}
	
}
