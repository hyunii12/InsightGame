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

import dao.ISchduleDao;
import model.Schdule;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/applicationContext.xml" })
public class test {
 @Autowired
 public ISchduleDao schduleDao;

 @org.junit.Test
 public void test2() {
  List<Schdule> list = new ArrayList<Schdule>(); 
  list=schduleDao.selectAllSchedule();
  for(Schdule s: list) {
   System.out.println(s.toString());
  }
 }

}