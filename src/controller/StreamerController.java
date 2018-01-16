package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StreamerController {
	
	@RequestMapping("InsightStreamer.do")
	public String main(Model model) {
		System.out.println("여기는 스트리머페이지");
		return "pages/streamer";
	}
}
