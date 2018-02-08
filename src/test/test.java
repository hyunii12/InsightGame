package test;

import java.util.ArrayList;
import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.IClipDao;
import dao.IScheduleDao;
import dao.ITgdDao;
import dao.ITwgameDao;
import model.Tgd;
import model.twgame;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/applicationContext.xml" })
public class test {
 @Autowired
 public IClipDao clipDao;
 @Autowired
 public IScheduleDao schduleDao;
 @Autowired
 public ITgdDao tgdDao;
 @Autowired
 public ITwgameDao twgameDao;

// @org.junit.Test
// public void test2() {
//  List<Schedule> list = new ArrayList<Schedule>(); 
//  list=schduleDao.selectAllSchedule();
//  for(Schedule s: list) {
//   System.out.println(s.toString());
//  }
// }
 
 
// @org.junit.Test
// public void test3() {
//  List<Clip> list = new ArrayList<Clip>(); 
//  list=clipDao.selectcliplist("2018-02-05");
//  for(Clip c: list) {
//   System.out.println(c.toString());
//  }
// }

// @org.junit.Test
// public void test4() {
//  List<Tgd> list = new ArrayList<Tgd>(); 
//  list=tgdDao.selecttgdlist("2018-02-05");
//  int cnt=0;
//  for(Tgd t: list) {
//	  cnt++;
//  }
//  System.out.println(cnt);
// }
// 
 @org.junit.Test
 public void test5() {
  List<twgame> list = new ArrayList<twgame>(); 
  list=twgameDao.selectAllgame();
  int cnt=0;
  for(twgame tw: list) {
	  System.out.println(tw.toString());
  }
 }
 
 
 
 
 

}