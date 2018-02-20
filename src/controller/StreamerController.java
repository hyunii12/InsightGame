package controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Clip;
import model.Streamer;
import model.StreamerPopularity;
import model.Tgd;
import model.streamerFollower;
import service.IClipService;
import service.ISFService;
import service.IStreamerService;
import service.IStreamerpopService;
import service.ITgdService;

@Controller
public class StreamerController {
	@Autowired
	IClipService clipService;
	@Autowired
	ITgdService tgdService;
	@Autowired
	IStreamerService streamerService;
	@Autowired
	IStreamerpopService streamerpopService;
	@Autowired
	ISFService sfService;

	@RequestMapping("InsightStreamer.do")
	public String streamer(Model model) {
		System.out.println("여기는 스트리머페이지");
		return "pages/streamer";
	}

	@RequestMapping("searchStreamer.do")
	public String searchStreamer(Model model, @RequestParam(name = "searchSelect", required = true) String searchSelect,
			@RequestParam(name = "search", defaultValue = "") String searchWord) {
		System.out.println("여기는 서치스트리머");
		Streamer streamer = streamerService.getStreamerByName(searchWord);
		System.out.println(streamer);
		
		List<Clip> streamerclip = streamerService.getstreamerclip(searchWord);

		List<Integer> streamercount=streamerService.getstreamergraph(searchWord);
		
		List<streamerFollower> streamerfow=sfService.getstreamerfowday(searchWord);
		
		LocalDateTime now = LocalDateTime.now();
		LocalDateTime end = now.minusDays(14);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd yyyy");
		DateTimeFormatter month = DateTimeFormatter.ofPattern("MM");

		String fourteen = end.format(formatter);
		String month2 = end.format(month);

		int month3 = Integer.parseInt(month2);
		String month4 = "";

		switch (month3) {
		case 01:
			month4 = "January";
			break;
		case 02:
			month4 = "February";
			break;
		}

		String d = month4 + " " + fourteen;
	
		model.addAttribute("d", d);
		model.addAttribute("streamerInfo", streamer);
		model.addAttribute("streamerclip", streamerclip);
		model.addAttribute("streamercount", streamercount);
		model.addAttribute("streamerfow",streamerfow);
		
		return "pages/searchStreamer";
	}

	@RequestMapping("streamerRadar.do")
	public String streamerRadar(Model model) {
		System.out.println("스트리머 레이더차트");
		return "contents/streamerRadarChart";
	}

	@RequestMapping("streamerRank.do")
	public String streamerRank(Model model) {
		System.out.println("시간,팔로우,IRL/방송시간 기준으로 스트리머 랭크");
//-------------------------풍월량------------------------------------------------------------
		List<StreamerPopularity> Streamer1 = new ArrayList<StreamerPopularity>();
		List<String> titlelist1 = new ArrayList<String>();
		HashMap<Double, String> map1 = new HashMap();

		List<Double> list1_1 = new ArrayList<Double>();
		List<String> list1_2 = new ArrayList<String>();

		Streamer1 = streamerpopService.getstreamerDaypop("풍월량");
		titlelist1 = streamerpopService.getDaytitle("풍월량");

		int[] cnt1 = new int[titlelist1.size()];

		for (StreamerPopularity s : Streamer1) {
			for (int i = 0; i < titlelist1.size(); i++) {
				if (s.getTitle().equals(titlelist1.get(i))) {
					cnt1[i]++;
				}
			}
		}
		
		for (int i = 0; i < cnt1.length; i++) {
			double time1 = (cnt1[i] * 10) / (double) 60;
			double time1_1 = Math.round(time1 * 100d) / 100d;

			map1.put(time1_1, titlelist1.get(i).toString());
		}
		TreeMap<Double, String> sortmap1 = new TreeMap<Double, String>(map1);

		Iterator<Double> iteratorKey1 = sortmap1.descendingKeySet().iterator();

		while (iteratorKey1.hasNext()) {

			Double key1 = iteratorKey1.next();

			System.out.println(key1 + "," + sortmap1.get(key1));
			list1_1.add(key1);
			list1_2.add(sortmap1.get(key1));
		}
//-------------------------------------------------------------------------------------------------
//----------------------------------------------웁_게임방송-------------------------------------------
		List<StreamerPopularity> Streamer2 = new ArrayList<StreamerPopularity>();
		List<String> titlelist2 = new ArrayList<String>();
		HashMap<Double, String> map2 = new HashMap();

		List<Double> list2_1 = new ArrayList<Double>();
		List<String> list2_2 = new ArrayList<String>();

		Streamer2 = streamerpopService.getstreamerDaypop("웁_게임방송");
		titlelist2 = streamerpopService.getDaytitle("웁_게임방송");

		int[] cnt2 = new int[titlelist2.size()];

		for (StreamerPopularity s : Streamer2) {
			for (int i = 0; i < titlelist2.size(); i++) {
				if (s.getTitle().equals(titlelist2.get(i))) {
					cnt2[i]++;
				}
			}
		}

		for (int i = 0; i < cnt2.length; i++) {
			double time2 = (cnt2[i] * 10) / (double) 60;
			double time2_1 = Math.round(time2 * 100d) / 100d;

			map2.put(time2_1, titlelist2.get(i).toString());
		}

		TreeMap<Double, String> sortmap2 = new TreeMap<Double, String>(map2);

		Iterator<Double> iteratorKey2 = sortmap2.descendingKeySet().iterator();

		while (iteratorKey2.hasNext()) {

			Double key2 = iteratorKey2.next();
			
			System.out.println("웁"+key2 + "," + sortmap2.get(key2));
			list2_1.add(key2);
			list2_2.add(sortmap2.get(key2));
		}
//----------------------------------------------------------------------------------------
//------------------------------------------서새봄냥------------------------------------------
		
		List<StreamerPopularity> Streamer3 = new ArrayList<StreamerPopularity>();
		List<String> titlelist3 = new ArrayList<String>();
		HashMap<Double, String> map3 = new HashMap();

		List<Double> list3_1 = new ArrayList<Double>();
		List<String> list3_2 = new ArrayList<String>();

		Streamer3 = streamerpopService.getstreamerDaypop("서새봄냥");
		titlelist3 = streamerpopService.getDaytitle("서새봄냥");

		int[] cnt3 = new int[titlelist3.size()];

		for (StreamerPopularity s : Streamer3) {
			for (int i = 0; i < titlelist3.size(); i++) {
				if (s.getTitle().equals(titlelist3.get(i))) {
					cnt3[i]++;
				}
			}
		}

		for (int i = 0; i < cnt3.length; i++) {
			double time3 = (cnt3[i] * 10) / (double) 60;
			double time3_1 = Math.round(time3 * 100d) / 100d;

			map3.put(time3_1, titlelist3.get(i).toString());
		}

		TreeMap<Double, String> sortmap3 = new TreeMap<Double, String>(map3);

		Iterator<Double> iteratorKey3 = sortmap3.descendingKeySet().iterator();

		while (iteratorKey3.hasNext()) {

			Double key3 = iteratorKey3.next();
			
			System.out.println("서새봄냥"+key3 + "," + sortmap3.get(key3));
			list3_1.add(key3);
			list3_2.add(sortmap3.get(key3));
		}
				
		
//----------------------------------------------------------------------------------------
//------------------------------------------김도------------------------------------------
		
				List<StreamerPopularity> Streamer4 = new ArrayList<StreamerPopularity>();
				List<String> titlelist4 = new ArrayList<String>();
				HashMap<Double, String> map4 = new HashMap();

				List<Double> list4_1 = new ArrayList<Double>();
				List<String> list4_2 = new ArrayList<String>();

				Streamer4 = streamerpopService.getstreamerDaypop("김도");
				titlelist4 = streamerpopService.getDaytitle("김도");

				int[] cnt4 = new int[titlelist4.size()];

				for (StreamerPopularity s : Streamer4) {
					for (int i = 0; i < titlelist4.size(); i++) {
						if (s.getTitle().equals(titlelist4.get(i))) {
							cnt4[i]++;
						}
					}
				}

				for (int i = 0; i < cnt4.length; i++) {
					double time4 = (cnt4[i] * 10) / (double) 60;
					double time4_1 = Math.round(time4 * 100d) / 100d;

					map4.put(time4_1, titlelist4.get(i).toString());
				}

				TreeMap<Double, String> sortmap4 = new TreeMap<Double, String>(map4);

				Iterator<Double> iteratorKey4 = sortmap4.descendingKeySet().iterator();

				while (iteratorKey4.hasNext()) {

					Double key4 = iteratorKey4.next();
					
					System.out.println("김도"+key4 + "," + sortmap4.get(key4));
					list4_1.add(key4);
					list4_2.add(sortmap4.get(key4));
				}
						
				
//----------------------------------------------------------------------------------------			
// -------------------------------------모델------------------------------------------------
		
				
		model.addAttribute("pungtime", list1_1);
		model.addAttribute("pungname", list1_2);
		
		model.addAttribute("wooptime", list2_1);
		model.addAttribute("woopname", list2_2);
		
		model.addAttribute("seotime", list3_1);
		model.addAttribute("seoname", list3_2);
		
		model.addAttribute("kimtime", list4_1);
		model.addAttribute("kimname", list4_2);

		return "contents/streamerRank";
	}

	@RequestMapping("hotClip.do")
	public String hotClip(Model model) {
		System.out.println("여기는 핫클립");

		List<Clip> list = clipService.getcliplist();
		
//		for (Clip c : list) {
//			System.out.println(c.getCp_view());
//		}

		model.addAttribute("cliplist", list);

		return "contents/hotclips";
	}
	
	@RequestMapping("hotTgd.do")
	public String hotTgd(Model model) {
		System.out.println("여기는 핫트게더");
		Tgd tgd = tgdService.hottgd();
		model.addAttribute("tgdlist", tgd);
		return "contents/hottgd";
	}

	@RequestMapping("streamerBoardNumAsTime.do") // 기존 버전
	public String streamerBoardNumAsTime(Model model) {
		System.out.println("시간에 따른 전체게시판/스트리머게시판 게시글 수");

		List<Integer> list = tgdService.gettgdlist();

		LocalDateTime now = LocalDateTime.now();
		LocalDateTime end = now.minusDays(14);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd yyyy");
		DateTimeFormatter month = DateTimeFormatter.ofPattern("MM");

		String fourteen = end.format(formatter);
		String month2 = end.format(month);

		int month3 = Integer.parseInt(month2);
		String month4 = "";

		switch (month3) {
		case 01:
			month4 = "January";
			break;
		case 02:
			month4 = "February";
			break;
		}

		String d = month4 + " " + fourteen;

		model.addAttribute("d", d);
		model.addAttribute("tdglist", list);

		// return null;
		return "contents/streamerBoardNumAsTime";

	}
	
	@RequestMapping("streamerIssuesRank.do")
	public String streamerIssuesRank(Model model) {

		System.out.println("스트리머 이슈스 랭크");
		
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String nalza = now.format(formatter); 
		
		List<String> s = new ArrayList<String>();
		
		//최근 6일로 할지 결정
		for(int i=1; i>=0; i--) {
		
			LocalDateTime end = now.minusDays(i); //minusDays(i);
			String formatDateTime = end.format(formatter);
			//System.out.println(formatDateTime);
						
			s.add(formatDateTime);			
		}
		
		System.out.println(s);
		
		List<Integer> hanryang1125list = new ArrayList<Integer>();
		List<Integer> saddummylist = new ArrayList<Integer>();
		List<Integer> dingceptionlist =new ArrayList<Integer>();
		List<Integer> gabrielcrolist = new ArrayList<Integer>();
		List<Integer> woowakgoodlist = new ArrayList<Integer>();
		List<Integer> ddahyonilist = new ArrayList<Integer>();
		List<Integer> kimdoelist = new ArrayList<Integer>();
		List<Integer> zilionerlist = new ArrayList<Integer>();
		List<Integer> gmdkdslalist = new ArrayList<Integer>();
		List<Integer> wpghd321list = new ArrayList<Integer>();
		
		
		
		for(int j=0; j<s.size();j++) {
			
			hanryang1125list.add(sfService.getstreamertoview("풍월량", s.get(j)));
			saddummylist.add(sfService.getstreamertoview("서새봄냥", s.get(j)));
			dingceptionlist.add(sfService.getstreamertoview("따효니", s.get(j)));
			gabrielcrolist.add(sfService.getstreamertoview("머독", s.get(j)));
			woowakgoodlist.add(sfService.getstreamertoview("러너", s.get(j)));
			ddahyonilist.add(sfService.getstreamertoview("우왁굳", s.get(j)));
			kimdoelist.add(sfService.getstreamertoview("룩삼", s.get(j)));
			zilionerlist.add(sfService.getstreamertoview("소풍왔니", s.get(j)));
			gmdkdslalist.add(sfService.getstreamertoview("똘킹", s.get(j)));
			wpghd321list.add(sfService.getstreamertoview("윤루트", s.get(j)));
	
		}
		
		model.addAttribute("hanryang1125list",hanryang1125list);
		model.addAttribute("saddummylist",saddummylist);
		model.addAttribute("dingceptionlist",dingceptionlist);
		model.addAttribute("gabrielcrolist",gabrielcrolist);
		model.addAttribute("woowakgoodlist",woowakgoodlist);
		model.addAttribute("ddahyonilist",ddahyonilist);
		model.addAttribute("kimdoelist",kimdoelist);
		model.addAttribute("zilionerlist",zilionerlist);
		model.addAttribute("gmdkdslalist",gmdkdslalist);
		model.addAttribute("wpghd321list",wpghd321list);
		
		

//		System.out.println("스트리머 이슈스 랭크");
		return "contents/StreamerIssuesRank";
		
	}
	
	
	@RequestMapping("streamerInterest.do")
	public String streamerInterest(Model model) {

		System.out.println("스트리머별 인기게임");
		// ---------------------------풍월량--------------------------------------------------------스트리머별로
		// 코드는 동일(refactorizing 필요)
		List<StreamerPopularity> list = new ArrayList<StreamerPopularity>();
		List<String> titlelist = new ArrayList<String>();
		HashMap<Integer, String> map = new HashMap();
		
		List<Integer> list_1 = new ArrayList<Integer>();
		List<String> list_2 = new ArrayList<String>();

		list = streamerpopService.getstreamerpop("풍월량");
		titlelist = streamerpopService.getAlltitle("풍월량");

		int[] cnt = new int[titlelist.size()];

		for (StreamerPopularity s : list) {
			for (int i = 0; i < titlelist.size(); i++) {
				if (s.getTitle().equals(titlelist.get(i))) {
					cnt[i]++;
				}
			}
		}

		for (int i = 0; i < cnt.length; i++) {
			// System.out.println(cnt[i]+ " " +titlelist.get(i).toString());
			map.put(cnt[i], titlelist.get(i).toString());

		}
		// System.out.println("--------------------------------------------------");
		TreeMap<Integer, String> sortmap = new TreeMap<Integer, String>(map);

		Iterator<Integer> iteratorKey = sortmap.descendingKeySet().iterator();

		while (iteratorKey.hasNext()) {

			Integer key = iteratorKey.next();

			// System.out.println(key + "," + sortmap.get(key));
			list_1.add(key);
			list_2.add(sortmap.get(key));
		}
		// ---------------------------------------------------------------------------------------
		// ---------------------------서새봄냥--------------------------------------------------------
		List<StreamerPopularity> list2 = new ArrayList<StreamerPopularity>();
		List<String> titlelist2 = new ArrayList<String>();
		HashMap<Integer, String> map2 = new HashMap();

		List<Integer> list2_1 = new ArrayList<Integer>();
		List<String> list2_2 = new ArrayList<String>();

		list2 = streamerpopService.getstreamerpop("서새봄냥");
		titlelist2 = streamerpopService.getAlltitle("서새봄냥");

		int[] cnt2 = new int[titlelist2.size()];

		for (StreamerPopularity s : list2) {
			for (int i = 0; i < titlelist2.size(); i++) {
				if (s.getTitle().equals(titlelist2.get(i))) {
					cnt2[i]++;
				}
			}
		}

		for (int i = 0; i < cnt2.length; i++) {
			// System.out.println(cnt2[i]+ " " +titlelist2.get(i).toString());
			map2.put(cnt2[i], titlelist2.get(i).toString());
		}
		// System.out.println("--------------------------------------------------");
		TreeMap<Integer, String> sortmap2 = new TreeMap<Integer, String>(map2);

		Iterator<Integer> iteratorKey2 = sortmap2.descendingKeySet().iterator();

		while (iteratorKey2.hasNext()) {

			Integer key2 = iteratorKey2.next();

			// System.out.println(key2 + "," + sortmap2.get(key2));
			list2_1.add(key2);
			list2_2.add(sortmap2.get(key2));
		}

		// ---------------------------------------------------------------------------------------
		// ---------------------------김도--------------------------------------------------------
		List<StreamerPopularity> list3 = new ArrayList<StreamerPopularity>();
		List<String> titlelist3 = new ArrayList<String>();
		HashMap<Integer, String> map3 = new HashMap();

		List<Integer> list3_1 = new ArrayList<Integer>();
		List<String> list3_2 = new ArrayList<String>();

		list3 = streamerpopService.getstreamerpop("김도");
		titlelist3 = streamerpopService.getAlltitle("김도");

		int[] cnt3 = new int[titlelist3.size()];

		for (StreamerPopularity s : list3) {
			for (int i = 0; i < titlelist3.size(); i++) {
				if (s.getTitle().equals(titlelist3.get(i))) {
					cnt3[i]++;
				}
			}
		}

		for (int i = 0; i < cnt3.length; i++) {
			// System.out.println(cnt2[i]+ " " +titlelist2.get(i).toString());
			map3.put(cnt3[i], titlelist3.get(i).toString());

		}
		// System.out.println("--------------------------------------------------");
		TreeMap<Integer, String> sortmap3 = new TreeMap<Integer, String>(map3);

		Iterator<Integer> iteratorKey3 = sortmap3.descendingKeySet().iterator();

		while (iteratorKey3.hasNext()) {

			Integer key3 = iteratorKey3.next();

			// System.out.println(key3 + "," + sortmap3.get(key3));
			list3_1.add(key3);
			list3_2.add(sortmap3.get(key3));
		}

		// ---------------------------------------------------------------------------------------
		// ---------------------------웁--------------------------------------------------------
		List<StreamerPopularity> list4 = new ArrayList<StreamerPopularity>();
		List<String> titlelist4 = new ArrayList<String>();
		HashMap<Integer, String> map4 = new HashMap();

		List<Integer> list4_1 = new ArrayList<Integer>();
		List<String> list4_2 = new ArrayList<String>();

		list4 = streamerpopService.getstreamerpop("웁_게임방송");
		titlelist4 = streamerpopService.getAlltitle("웁_게임방송");

		int[] cnt4 = new int[titlelist4.size()];

		for (StreamerPopularity s : list4) {
			for (int i = 0; i < titlelist4.size(); i++) {
				if (s.getTitle().equals(titlelist4.get(i))) {
					cnt4[i]++;
				}
			}
		}

		for (int i = 0; i < cnt4.length; i++) {
			System.out.println(cnt4[i] + " " + titlelist4.get(i).toString());
			map4.put(cnt4[i], titlelist4.get(i).toString());

		}
		System.out.println("--------------------------------------------------");
		TreeMap<Integer, String> sortmap4 = new TreeMap<Integer, String>(map4);

		Iterator<Integer> iteratorKey4 = sortmap4.descendingKeySet().iterator();

		while (iteratorKey4.hasNext()) {

			Integer key4 = iteratorKey4.next();

//			System.out.println(key4 + "," + sortmap4.get(key4));
			list4_1.add(key4);
			list4_2.add(sortmap4.get(key4));
		}

		// ---------------------------------------------------------------------------------------
		// ---------------------------다주--------------------------------------------------------
		List<StreamerPopularity> list5 = new ArrayList<StreamerPopularity>();
		List<String> titlelist5 = new ArrayList<String>();
		HashMap<Integer, String> map5 = new HashMap();

		List<Integer> list5_1 = new ArrayList<Integer>();
		List<String> list5_2 = new ArrayList<String>();

		list5 = streamerpopService.getstreamerpop("다주");
		titlelist5 = streamerpopService.getAlltitle("다주");

		int[] cnt5 = new int[titlelist5.size()];

		for (StreamerPopularity s : list5) {
			for (int i = 0; i < titlelist5.size(); i++) {
				if (s.getTitle().equals(titlelist5.get(i))) {
					cnt5[i]++;
				}
			}
		}

		for (int i = 0; i < cnt5.length; i++) {
			System.out.println(cnt5[i] + " " + titlelist5.get(i).toString());
			map5.put(cnt5[i], titlelist5.get(i).toString());

		}
		System.out.println("--------------------------------------------------");
		TreeMap<Integer, String> sortmap5 = new TreeMap<Integer, String>(map5);

		Iterator<Integer> iteratorKey5 = sortmap5.descendingKeySet().iterator();

		while (iteratorKey5.hasNext()) {

			Integer key5 = iteratorKey5.next();

//			System.out.println(key5 + "," + sortmap5.get(key5));
			list5_1.add(key5);
			list5_2.add(sortmap5.get(key5));
		}

		// ---------------------------------------------------------------------------------------

		// -------------------------------------모델------------------------------------------------
		model.addAttribute("pungcount", list_1);
		model.addAttribute("pungname", list_2);

		model.addAttribute("bomcount", list2_1);
		model.addAttribute("bomungname", list2_2);

		model.addAttribute("kimcount", list3_1);
		model.addAttribute("kimname", list3_2);

		model.addAttribute("woopcount", list4_1);
		model.addAttribute("woopname", list4_2);

		model.addAttribute("dazucount", list5_1);
		model.addAttribute("dazuname", list5_2);

		return "contents/streamerInterest";

	}
	
	
	@RequestMapping("streamerBoardKeyword.do")
	public String streamerBoardKeyword(Model model) {
		System.out.println("스트리머 보드 키워드 버블차트");
		return "contents/streamerBoardKeyword";
		
	}
	
}
