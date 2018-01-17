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

import model.Board;
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
		HashMap<String, Object> boardListByPage = boardService.getBoardList(page);
		List<Board> boardList = 
			 	(List<Board>) boardListByPage.get("boardList");
		
//		System.out.println("page: "+page);
//		for(Board b : boardList)
//			System.out.println(b);		
		
		model.addAttribute("start", boardListByPage.get("start"));
		model.addAttribute("end", boardListByPage.get("end"));
		model.addAttribute("first", boardListByPage.get("first"));
		model.addAttribute("last", boardListByPage.get("last"));
		model.addAttribute("current", boardListByPage.get("current"));
		model.addAttribute("boardList", boardList);
		
		return "pages/board";
	}
	
	@RequestMapping("getList.do")
	public @ResponseBody HashMap<String, Object> getList(@RequestParam(name="page", defaultValue="1")int page) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> boardListByPage = boardService.getBoardList(page);
		List<Board> boardList = 
			 	(List<Board>) boardListByPage.get("boardList");
		result.put("start", boardListByPage.get("start"));
		result.put("end", boardListByPage.get("end"));
		result.put("first", boardListByPage.get("first"));
		result.put("last", boardListByPage.get("last"));
		result.put("current", boardListByPage.get("current"));
		result.put("boardList", boardList);
		return result;
	}
	
	@RequestMapping("write.do")
	public @ResponseBody HashMap<String, Object> write(Model model, 
			@RequestParam(name="header", defaultValue="-")String header,
			@RequestParam(name="content", required= true)String content) {
		HashMap<String, Object> result = new HashMap<>();
		// 작성자: 로그인 유저로 수정 해야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//		System.out.println(header+":::::::::"+content);
		Board board = new Board();
		board.setHeader(header);
		board.setContent(content);
		board.setWriter("temp");
		int newBId = boardService.writeBoard(board, 0);
		if(newBId > 0) {
			// 작성 성공
			result.put("msg", true);
			result.put("new", newBId);
		}
		else
			result.put("msg", false);
		return result;
//		return "redirect:board.do";
	}
	
//	@RequestMapping("board.do")
//	public String main(Model model) {
//		System.out.println("여기는 보드");
//		
//		model.addAttribute("msg", "BOARD RESPONSE");
//		return "pages/board";
//	}

	
	
}
