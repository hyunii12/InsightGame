package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import service.IBoardService;
import service.IMemberService;

@Controller
public class BoardController {
	@Autowired
	IBoardService boardService;
//	@Autowired
//	IMemberService memberService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	@RequestMapping("board.do")
	public String main(Model model, @RequestParam(name="page", defaultValue="1")int page) {
		System.out.println("page: "+page);
		HashMap<String, Object> boardListByPage = boardService.getBoardList(page);
		List<HashMap<String, Object>> boardList = 
				(List<HashMap<String, Object>>) boardListByPage.get("boardList");
		System.out.println(boardList.get(0).toString());
		model.addAttribute("start", boardListByPage.get("start"));
		model.addAttribute("end", boardListByPage.get("end"));
		model.addAttribute("first", boardListByPage.get("first"));
		model.addAttribute("last", boardListByPage.get("last"));
		model.addAttribute("current", boardListByPage.get("current"));
		model.addAttribute("boardList", boardList);
		return "pages/board";
	}
	@RequestMapping("boardList.do")
	public @ResponseBody HashMap<String, Object> getList(Model model, @RequestParam(name="page", defaultValue="1")int page) {
		HashMap<String, Object> result = new HashMap<>();
		
		return result;
	}
//	@RequestMapping("board.do")
//	public String main(Model model) {
//		System.out.println("여기는 보드");
//		
//		model.addAttribute("msg", "BOARD RESPONSE");
//		return "pages/board";
//	}

	
	
}
