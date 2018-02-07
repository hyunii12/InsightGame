package test;

import java.util.ArrayList;
import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.IClipDao;
import model.Schedule;
import dao.IScheduleDao;
import model.Clip;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/applicationContext.xml" })
public class test {
 @Autowired
 public IClipDao clipDao;
 @Autowired
 public IScheduleDao schduleDao;

// @org.junit.Test
// public void test2() {
//  List<Schdule> list = new ArrayList<Schdule>(); 
//  list=schduleDao.selectAllSchedule();
//  for(Schdule s: list) {
//   System.out.println(s.toString());
//  }
// }
 
 
 @org.junit.Test
 public void test3() {
  List<Clip> list = new ArrayList<Clip>(); 
  list=clipDao.selectcliplist("2018-02-02");
  for(Clip c: list) {
   System.out.println(c.toString());
  }
 }
 public void test2() {
  List<Schedule> list = new ArrayList<Schedule>(); 
  list=schduleDao.selectAllSchedule();
  for(Schedule s: list) {
   System.out.println(s.toString());
  }
 }
 

}