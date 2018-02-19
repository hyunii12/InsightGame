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
import model.twgame;
import service.IGenrerankingService;
import service.IRbrankingService;
import service.ITgdService;
import service.ITwgameService;

@Controller
public class GameController {
	
	@Autowired
	ITwgameService twgameService;
	@Autowired
	IRbrankingService rbrankService;
	@Autowired
	IGenrerankingService genrerankService;
	
	
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
		List<Game> gameInfo = new ArrayList<Game>();
		model.addAttribute("gameInfo",gameInfo);
		return "pages/gameDetail";
	}
	////
	@RequestMapping("gameInterest.do")
	public String gameInterest(Model model) {
		System.out.println("여기는 게임인터레스트");
			
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String nalza = now.format(formatter); 
		
		List<String> s = new ArrayList<String>();
		
		//최근 6일로 할지 결정
		for(int i=5; i>=0; i--) {
		
			LocalDateTime end = now.minusDays(i); //minusDays(i);
			String formatDateTime = end.format(formatter);
			System.out.println(formatDateTime);
						
			s.add(formatDateTime);			
		}
		
		System.out.println(s);
		
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
		
//확인용
//		System.out.println(nalza);
//		for(Integer i: IRLlist) {
//			System.out.println(i);
//		}//
		
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
	
	
	@RequestMapping("gameIssues.do")
	public String gameIssues(Model model) {
		System.out.println("여기는 게임이슈스");
		return "contents/issues";
	}

	
	
	@RequestMapping("gameRankAsGenre.do")
	public String gameRankAsGenre(Model model) {//

		System.out.println("장르별 게임순위");
		System.out.println("//////////////////////////////////////////////////////////////");
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
		
		System.out.println(fpsrank.size());
		System.out.println(mmorpgrank.size());
		System.out.println(actionrank.size());
		System.out.println(board_puzzle_musicrank.size());
		System.out.println(sportrank.size());
		
		
		model.addAttribute("fpsrank",fpsrank);
		model.addAttribute("mmorpgrank",mmorpgrank);
		model.addAttribute("actionrank",actionrank);
		model.addAttribute("board_puzzle_musicrank",board_puzzle_musicrank);
		model.addAttribute("sportrank",sportrank);

		
		return "contents/gameRankAsGenre";
	}
	
	
	@RequestMapping("gameRankAsType.do")
	public String gameRankAsType(Model model) {
		System.out.println("유형별 게임 순위");
		System.out.println("//////////////////////////////////////////////////////////////");
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
		
		System.out.println(dsrank.size());
		System.out.println(mobilebrank.size());
		System.out.println(pcbrank.size());
		System.out.println(ps4brank.size());
		System.out.println(psvitabrank.size());
		System.out.println(switchbrank.size());
		System.out.println(xboxbrank.size());
		
		
//		dsrank=rbrankService.get3dsList();
//		for(int i=0; i<dsrank.size();i++) {
//			System.out.println(dsrank.get(i).getName());
//		}
		
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
		System.out.println("게임 순위");
		return "contents/gameRank";

	}
	
	
}
