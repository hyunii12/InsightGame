package dao;

import java.util.List;

import model.Schedule;

public interface IScheduleDao {
	
	public List<Schedule> selectAllSchedule();
	public int insertSchedule(Schedule schedule);
	public int updateSchedule(Schedule schedule);
	public int deleteSchedule(String scId);
	public Schedule selectOneSchedule(String scId);
	

}
