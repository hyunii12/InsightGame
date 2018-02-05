package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.inject.servlet.RequestParameters;


@Controller
public class StreamerController {
	
	
	
	
	@RequestMapping("InsightStreamer.do")
	public String streamer(Model model) {
		System.out.println("여기는 스트리머페이지");
		return "pages/streamer";
	}
	
	
	@RequestMapping("searchStreamer.do")
	public String searchStreamer(Model model, @RequestParam(name="searchSelect", required=true)String searchSelect,
			@RequestParam(name="search", defaultValue="") String search) {
		System.out.println("여기는 서치스트리머");
		model.addAttribute("what", search);
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
		return "contents/streamerRank";
	}
	
}



