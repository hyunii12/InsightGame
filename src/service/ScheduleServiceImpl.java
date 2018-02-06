package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IScheduleDao;
import model.Schedule;

@Service("ScheduleService")
public class ScheduleServiceImpl implements IScheduleService {
	
	@Autowired
	private IScheduleDao scheduleDao;

	@Override
	public List<Schedule> getScheduleList() {
		// TODO Auto-generated method stub
		return scheduleDao.selectAllSchedule();
	}

	@Override
	public Schedule getSchedule(String scId) {
		// TODO Auto-generated method stub
		return scheduleDao.selectOneSchedule(scId);
	}
}
