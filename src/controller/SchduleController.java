package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchduleController {
	

    
    @RequestMapping("gameCalendar.do")
    public String gameCalendar(Model model) {
       System.out.println("여기는 게임캘린더더더더");
       return "contents/gameCalendar";
    }
    
    
    @RequestMapping("streamerCalendar.do")
    public String streamerCalendar(Model model) {
       System.out.println("여기는 스트리머캘린더");
       return "contents/streamerCalendar";
    }
    
 




}
