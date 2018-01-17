package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
