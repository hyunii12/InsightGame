package service;

import java.util.List;

import model.Schedule;

public interface IScheduleService {
	
	public List<Schedule> getScheduleList();
	public Schedule getSchedule(String scId);

}
