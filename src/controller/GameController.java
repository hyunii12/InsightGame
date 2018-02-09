package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GameController {
	
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
