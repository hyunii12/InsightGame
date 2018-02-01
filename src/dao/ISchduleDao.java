package dao;

import java.util.List;

import model.Schdule;

public interface ISchduleDao {
	
	public List<Schdule> selectAllSchedule();
	public int insertSchedule(Schdule schdule);
	public int updateSchedule(Schdule schdule);
	public int deleteSchedule(String scId);
	public Schdule selectOneSchedule(String scId);
	

}
