package test;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.IClipDao;
import dao.IScheduleDao;
import dao.IStreamerpopDao;
import dao.ITgdDao;
import dao.ITwgameDao;
import model.StreamerPopularity;

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
	@Autowired
	public IStreamerpopDao streamerpopDao;

	@org.junit.Test
	public void test0() {
//		List<StreamerPopularity> list = new ArrayList<StreamerPopularity>();
//		List<String> list2 = new ArrayList<String>();
//		list = streamerpopDao.selectAllstreamerpop("다주");
//
//		list2 = streamerpopDao.selectAlltitle("다주");
//		int cnt=0;
//		for (StreamerPopularity s : list) {
//			System.out.println(s);
//			if (s.getTitle().equals("IRL")) {
////				System.out.println("IRL");
//				cnt++;
//			} else {
//				System.out.println(s);
//
//			}
//		}
//		System.out.println(cnt);
//--------------------------------------------------
		List<StreamerPopularity> list = new ArrayList<StreamerPopularity>();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("sname","김도");
		map.put("day","2018-02-16");
		list = streamerpopDao.selectDaystreamerpop(map);
		System.out.println(list.size());
		
		List<String> list1 = new ArrayList<String>();
		HashMap<String, String> map2 = new HashMap<String, String>();
		map2.put("sname","김도");
		map2.put("day","2018-02-16");
		list1 = streamerpopDao.selectdaytitle(map2);
		for(String s: list1) {
			System.out.println(s);
		}
		
	}

	// @org.junit.Test
	// public void test2() {
	// List<Schedule> list = new ArrayList<Schedule>();
	// list=schduleDao.selectAllSchedule();
	// for(Schedule s: list) {
	// System.out.println(s.toString());
	// }
	// }

	// @org.junit.Test
	// public void test3() {
	// List<Clip> list = new ArrayList<Clip>();
	// list=clipDao.selectcliplist("2018-02-13");
	// for(Clip c: list) {
	// System.out.println(c.toString());
	// }
	// }

	// @org.junit.Test
	// public void test4() {
	// List<Tgd> list = new ArrayList<Tgd>();
	// list=tgdDao.selecttgdlist("2018-02-05");
	// int cnt=0;
	// for(Tgd t: list) {
	// cnt++;
	// }
	// System.out.println(cnt);
	// }
	//
	// @org.junit.Test
	// public void test5() {
	// List<twgame> list = new ArrayList<twgame>();
	// list=twgameDao.selectAllgame();
	// int cnt=0;
	// for(twgame tw: list) {
	// System.out.println(tw.toString());
	// }
	// }

	// @org.junit.Test
	// public void test6() {
	// Integer list = 0;
	// HashMap<String, String> map = new HashMap<String, String>();
	//
	// map.put("name", "Overwatch");
	// map.put("day", "2018-02-12");
	//
	// list=twgameDao.gametoview(map);
	//
	// }

	// @org.junit.Test
	// public void test7() {
	// List<HashMap<String, Object>> list= new ArrayList<HashMap<String, Object>>();
	// list=twgameDao.selectgametoview("2018-02-08");
	//
	// for(HashMap<String, Object> tw: list) {
	// System.out.println(tw.toString());
	// }
	// }

	// @org.junit.Test
	// public void test8() {
	// List<Rbranking> list = new ArrayList<Rbranking>();
	// list=rbrankingDao.select3dsRanking("2018-02-12");
	//
	// for(Rbranking rb: list) {
	// System.out.println(rb.toString());
	// }
	// }

}