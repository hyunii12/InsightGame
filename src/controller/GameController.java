package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameController {
	@RequestMapping("main.do")
	public String main(Model model) {
		System.out.println("여기는 메인 게임페이지");
		model.addAttribute("msg", "MAIN RESPONSE");
		return "main";
	}
	
	@RequestMapping("InsightGame.do")
	public String insightGame(Model model) {
		System.out.println("여기는 게임페이지");
		model.addAttribute("msg", "MAIN RESPONSE");
		return "main";
	}
}
