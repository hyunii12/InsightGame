package controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Game;
import model.GenreRanking;
import model.Rbranking;
import service.IGameIssuesService;
import service.IGameService;
import service.IGenrerankingService;
import service.IRbrankingService;
import service.ITwgameService;

@Controller
public class GameController {
	
	@Autowired
	ITwgameService twgameService;
	@Autowired
	IRbrankingService rbrankService;
	@Autowired
	IGenrerankingService genrerankService;
	@Autowired
	IGameService gameService;
	@Autowired
	IGameIssuesService gameIssuesService;
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
			@RequestParam(name="search", defaultValue="") String searchWord) {
		Game game = gameService.selectGameInfo(searchWord);
		model.addAttribute("gameInfo", game);
		
		List<Game> titleList = new ArrayList<>();
		titleList = gameService.selectGameTitleList();
		List<String> titleListResult = new ArrayList<>();
		for(Game g : titleList) {
			titleListResult.add(g.getTitle());
		}
		model.addAttribute("gameTitle", titleListResult);
		return "pages/searchGame";
	}
	
	@RequestMapping("gameRecommend.do")
	public String gameRecommend(Model model) {
		return "contents/gameRecommned";
	}
	
	@RequestMapping("gameDetail.do")
	public String gameDetail(Model model) {
		List<Game> gameInfo = new ArrayList<Game>();
		model.addAttribute("gameInfo",gameInfo);
		return "pages/gameDetail";
	}
	////
	@RequestMapping("gameInterest.do")
	public String gameInterest(Model model) {
			
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String nalza = now.format(formatter); 
		
		List<String> s = new ArrayList<String>();
		
		//최근 6일로 할지 결정
		for(int i=5; i>=0; i--) {
		
			LocalDateTime end = now.minusDays(i); //minusDays(i);
			String formatDateTime = end.format(formatter);
						
			s.add(formatDateTime);			
		}
		
		List<Integer> overlist = new ArrayList<Integer>();
		List<Integer> Leaguelist = new ArrayList<Integer>();
		List<Integer> Heartlist =new ArrayList<Integer>();
		List<Integer> Fortnitelist = new ArrayList<Integer>();
		List<Integer> Dotalist = new ArrayList<Integer>();
		List<Integer> BATTLElist = new ArrayList<Integer>();
		List<Integer> wowlist = new ArrayList<Integer>();
		List<Integer> gtalist = new ArrayList<Integer>();
		List<Integer> ctlist = new ArrayList<Integer>();
		List<Integer> IRLlist = new ArrayList<Integer>();
		
		
		for(int j=0; j<s.size();j++) {
				
			overlist.add(twgameService.getgametoview("Overwatch",s.get(j)));
			Leaguelist.add(twgameService.getgametoview("League of Legends",s.get(j)));
			Heartlist.add(twgameService.getgametoview("Hearthstone",s.get(j)));
			Fortnitelist.add(twgameService.getgametoview("Fortnite",s.get(j)));
			Dotalist.add(twgameService.getgametoview("Dota 2",s.get(j)));
			BATTLElist.add(twgameService.getgametoview("PLAYERUNKNOWN'S BATTLEGROUNDS",s.get(j)));
			wowlist.add(twgameService.getgametoview("World of Warcraft",s.get(j)));
			gtalist.add(twgameService.getgametoview("Grand Theft Auto V",s.get(j)));
			ctlist.add(twgameService.getgametoview("Counter-Strike: Global Offensive",s.get(j)));
			IRLlist.add(twgameService.getgametoview("IRL",s.get(j)));
	
		}
		
		model.addAttribute("overlist",overlist);
		model.addAttribute("Leaguelist",Leaguelist);
		model.addAttribute("Heartlist",Heartlist);
		model.addAttribute("Fortnitelist",Fortnitelist);
		model.addAttribute("Dotalist",Dotalist);
		model.addAttribute("BATTLElist",BATTLElist);
		model.addAttribute("wowlist",wowlist);
		model.addAttribute("gtalist",gtalist);
		model.addAttribute("ctlist",ctlist);
		model.addAttribute("IRLlist",IRLlist);
		
		return "contents/gameInterest";
	}
	
	
	@RequestMapping("gameIssuesTable.do")
	public String gameIssuesTable(Model model) {
		List<HashMap<String, Object>> list = new ArrayList<>();
		list = gameIssuesService.getGameIssuesListToday();
		if(list.size() > 1) {
			model.addAttribute("result", true);
			model.addAttribute("todayIssuesList", list);
		}
		else
			model.addAttribute("result", false);
		model.addAttribute("view", "table");
		return "contents/issuesTable";
	}
	@RequestMapping("gameIssuesChart.do")
	public String gameIssuesChart(Model model) {
		return "contents/issuesChart";
	}

	
	@RequestMapping("gameRankAsGenre.do")
	public String gameRankAsGenre(Model model) {//

		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String today = now.format(formatter);
		
		
		List<GenreRanking> fpsrank = new ArrayList<GenreRanking>();
		List<GenreRanking> mmorpgrank = new ArrayList<GenreRanking>();
		List<GenreRanking> actionrank = new ArrayList<GenreRanking>();
		List<GenreRanking> board_puzzle_musicrank = new ArrayList<GenreRanking>();
		List<GenreRanking> sportrank = new ArrayList<GenreRanking>();
		
		fpsrank=genrerankService.getfpsList(today);
		mmorpgrank=genrerankService.getmmorpgList(today);
		actionrank=genrerankService.getactionList(today);
		board_puzzle_musicrank=genrerankService.getboard_puzzle_musicList(today);
		sportrank=genrerankService.getsportList(today);
		
		
		model.addAttribute("fpsrank",fpsrank);
		model.addAttribute("mmorpgrank",mmorpgrank);
		model.addAttribute("actionrank",actionrank);
		model.addAttribute("board_puzzle_musicrank",board_puzzle_musicrank);
		model.addAttribute("sportrank",sportrank);

		
		return "contents/gameRankAsGenre";
	}
	
	
	@RequestMapping("gameRankAsType.do")
	public String gameRankAsType(Model model) {
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String today = now.format(formatter); 
		
		
		List<Rbranking> dsrank = new ArrayList<Rbranking>();
		List<Rbranking> mobilebrank = new ArrayList<Rbranking>();
		List<Rbranking> pcbrank = new ArrayList<Rbranking>();
		List<Rbranking> ps4brank = new ArrayList<Rbranking>();
		List<Rbranking> psvitabrank = new ArrayList<Rbranking>();
		List<Rbranking> switchbrank = new ArrayList<Rbranking>();
		List<Rbranking> xboxbrank = new ArrayList<Rbranking>();
		
		dsrank=rbrankService.get3dsList(today);
		mobilebrank=rbrankService.getmobileList(today);
		pcbrank=rbrankService.getpcList(today);
		ps4brank=rbrankService.getps4List(today);
		psvitabrank=rbrankService.getpsvitaList(today);
		switchbrank=rbrankService.getswitchList(today);
		xboxbrank=rbrankService.getxboxList(today);
		
		model.addAttribute("dsrank",dsrank);
		model.addAttribute("mobilebrank",mobilebrank);
		model.addAttribute("pcbrank",pcbrank);
		model.addAttribute("ps4brank",ps4brank);
		model.addAttribute("psvitabrank",psvitabrank);
		model.addAttribute("switchbrank",switchbrank);
		model.addAttribute("xboxbrank",xboxbrank);
				
		return "contents/gameRankAsType";
	}
	@RequestMapping("gameRank.do")
	public String gameRank(Model model) {
		return "contents/gameRank";

	}
	
	
}
