package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.twgame;
import service.ITgdService;
import service.ITwgameService;

@Controller
public class GameController {
	
	@Autowired
	ITwgameService twgameService;
	
	
	@RequestMapping("main.do")
	public String main() {
		return "main";
	}

	@RequestMapping("InsightGame.do")
	public String game() {
		return "redirect:main.do";

	}

	@RequestMapping("searchGame.do")
	public String searchGame(Model model, @RequestParam(name="searchSelect", required=true)String searchSelect,
			@RequestParam(name="search", defaultValue="") String search) {
		System.out.println("여기는 서치게임");
		model.addAttribute("what", search);
		return "pages/searchGame";
	}
	
	@RequestMapping("gameDetail.do")
	public String gameDetail(Model model) {
	System.out.println("여기는 게임디테일");
			return "pages/gameDetail";
	}
	
	@RequestMapping("gameInterest.do")
	public String gameInterest(Model model) {
		System.out.println("여기는 게임인터레스트");
		
		List<twgame> list = twgameService.gettwgamelist();
		List<String> game = new ArrayList<String>();
		for(int i=0; i<list.size(); i++) {
//			if(tw.getTwgdate().equals("2018-02-08")){
//				System.out.println("ok");
//			}else
//			{
//				System.out.println("false");
//			}
			if(list.get(i).getTwgdate().equals("2018-02-08")){
				game.add(list.get(i).getTwgname());
			}
		}
		
		List<Integer> list2 = twgameService.getgametoview("Overwatch");
//		for(Integer i: list2) {
//			System.out.println(i);
//		}

		model.addAttribute("OverwatchView",list2);
		model.addAttribute("game",game);
		model.addAttribute("tw",list);
		
		return "contents/gameInterest";
	}
	
	
	@RequestMapping("gameIssues.do")
	public String gameIssues(Model model) {
		System.out.println("여기는 게임이슈스");
		return "contents/issues";
	}
	
	
	@RequestMapping("gameRankAsCompany.do")
	public String gameRankAsCompany(Model model) {
		System.out.println("제작사 순위");
		return "contents/gameRankAsCompany";
	}
	
	@RequestMapping("gameRankAsGenre.do")
	public String gameRankAsGenre(Model model) {
		System.out.println("장르별 게임순위");
		return "contents/gameRankAsGenre";
	}
	
	
	@RequestMapping("gameRankAsType.do")
	public String gameRankAsType(Model model) {
		System.out.println("유형별 게임 순위");
		return "contents/gameRankAsType";
	}
}
