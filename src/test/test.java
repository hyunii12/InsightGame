package test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.IScheduleDao;
import model.Schedule;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/applicationContext.xml" })
public class test {
 @Autowired
 public IScheduleDao schduleDao;

 @org.junit.Test
 public void test2() {
  List<Schedule> list = new ArrayList<Schedule>(); 
  list=schduleDao.selectAllSchedule();
  for(Schedule s: list) {
   System.out.println(s.toString());
  }
 }

}