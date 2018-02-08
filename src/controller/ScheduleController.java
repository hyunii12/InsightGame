package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Schedule;
import service.IScheduleService;


@Controller
public class ScheduleController {
	@Autowired
	IScheduleService scheduleService;

    
    @RequestMapping("gameCalendar.do")
    public @ResponseBody HashMap<String, Object> gameCalendar() {
//    public String gameCalendar(Model model) {
       System.out.println("여기는 게임캘린더더더더");
//       
       HashMap<String, Object> result = new HashMap<>();
       List<Schedule> scheduleList = scheduleService.getScheduleList();
       result.put("scheduleList", scheduleList);
//       result.put("msg", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
       return result;
    }
    
    
    @RequestMapping("streamerCalendar.do")
    public String streamerCalendar(Model model) {
       System.out.println("여기는 스트리머캘린더");
       return "contents/streamerCalendar";
    }
}
