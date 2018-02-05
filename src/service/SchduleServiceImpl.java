package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ISchduleDao;
import model.Schdule;

@Service("SchduleService")
public class SchduleServiceImpl implements ISchduleService {
	
	@Autowired
	private ISchduleDao schduleDao;

	
	@Override
	public List<Schdule> getSchduleList() {
		// TODO Auto-generated method stub
		return schduleDao.selectAllSchedule();
	}

	@Override
	public Schdule getSchdule(String scId) {
		// TODO Auto-generated method stub
		return schduleDao.selectOneSchedule(scId);
	}

	
	
	

}
