package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Schdule;
import service.IBoardService;
import service.ISchduleService;

@Controller
public class SchduleController {
	@Autowired
	ISchduleService scheduleService;

    
    @RequestMapping("gameCalendar.do")
    public String gameCalendar(Model model) {
       System.out.println("여기는 게임캘린더더더더");
       
       List<Schdule> list = scheduleService.getSchduleList();
//       for(Schdule s: list) {
//    	   System.out.println(s.toString());
//       }
       model.addAttribute("sclist", list);
       
       return "contents/gameCalendar";
    }
    
    
    @RequestMapping("streamerCalendar.do")
    public String streamerCalendar(Model model) {
       System.out.println("여기는 스트리머캘린더");
       return "contents/streamerCalendar";
    }
    
 




}
