package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StreamerController {
	
	@RequestMapping("main.do")
	public String main(Model model) {
		
		System.out.println("메인 스트리머페이지");
		return "main";
	}

}
