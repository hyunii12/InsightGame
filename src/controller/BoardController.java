package controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.research.ws.wadl.Request;

import model.Board;
import service.IBoardService;
import service.IMemberService;

@Controller
public class BoardController {
	@Autowired
	IBoardService boardService;
	// @Autowired
	// IMemberService memberService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping("board.do")
	public String main(Model model, @RequestParam(name = "page", defaultValue = "1") int page) {
		HashMap<String, Object> boardListByPage = boardService.getBoardList(page);
		List<Board> boardList = (List<Board>) boardListByPage.get("boardList");

		model.addAttribute("start", boardListByPage.get("start"));
		model.addAttribute("end", boardListByPage.get("end"));
		model.addAttribute("first", boardListByPage.get("first"));
		model.addAttribute("last", boardListByPage.get("last"));
		model.addAttribute("current", boardListByPage.get("current"));
		model.addAttribute("boardList", boardList);
		return "pages/board";
	}

	@RequestMapping("getList.do")
	public @ResponseBody HashMap<String, Object> getList(@RequestParam(name = "page", defaultValue = "1") int page) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> boardListByPage = boardService.getBoardList(page);
		List<Board> boardList = (List<Board>) boardListByPage.get("boardList");
		result.put("start", boardListByPage.get("start"));
		result.put("end", boardListByPage.get("end"));
		result.put("first", boardListByPage.get("first"));
		result.put("last", boardListByPage.get("last"));
		result.put("current", boardListByPage.get("current"));
		result.put("boardList", boardList);
		return result;
	}

	@RequestMapping("getCommentList.do")
	public @ResponseBody HashMap<String, Object> getCommentList(
			@RequestParam(name = "groupId", required = true) int groupId) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> boardListByPage = boardService.getCommentList(groupId);
		List<Board> commentList = (List<Board>) boardListByPage.get("commentList");
		result.put("commentList", commentList);
		return result;
	}

	// 작성자: 로그인 유저로 수정 해야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	@RequestMapping("write.do")
	public @ResponseBody HashMap<String, Object> write(
			@RequestParam(name = "header", defaultValue = "잡담") String header,
			@RequestParam(name = "content", required = true) String content, HttpServletRequest request)
			throws UnsupportedEncodingException {
		HashMap<String, Object> results = new HashMap<>();

		HttpSession session = request.getSession();
		String boardWriter = (String) session.getAttribute("user_id");
		// String[] writer = boardWriter.split("@");
		Board board = new Board();

		if (boardWriter != null) {
			board.setHeader(header);
			board.setContent(content);
			board.setWriter(boardWriter);
			int result = boardService.writeBoard(board, 0);
			results.put("result", result);
			return results;
		} else {
			String msg = "로그인 하세요.";
			results.put("msg", msg);
			results.put("result", 0);
			return results;
		}
	}

	@RequestMapping("writeCmt.do")
	public @ResponseBody HashMap<String, Object> writeCmt(
			@RequestParam(name = "parentBId", required = true) String parentBId,
			@RequestParam(name = "header", defaultValue = "-") String header,
			@RequestParam(name = "writer", defaultValue = "-") String writer,
			@RequestParam(name = "content", required = true) String content, HttpServletRequest request)
			throws UnsupportedEncodingException {
		HashMap<String, Object> result = new HashMap<>();
		HttpSession session = request.getSession();
		String boardWriter = (String) session.getAttribute("user_id");
		// String[] test = boardWriter.split("@");
		// writer = test[0];
		if(boardWriter != null) {
			int parentId = Integer.parseInt(parentBId);
			Board board = new Board();
			board.setHeader(header);
			board.setContent(content);
			board.setWriter(boardWriter);
			int newBId = boardService.writeBoard(board, parentId);
			if (newBId > 0) {
				// 작성 성공
				result.put("msg", "댓글 작성 완료");
			} else {
				result.put("msg", "댓글 작성 실패");
			}
		}else {
			result.put("msg", "로그인 하세요.");
		}
		return result;
		
	}

	@RequestMapping("modify.do")
	public @ResponseBody HashMap<String, Object> modify(@RequestParam(name = "bId", defaultValue = "-") String bId,
			@RequestParam(name = "content", required = true) String content, HttpServletRequest request)
			throws UnsupportedEncodingException {

		Board board = boardService.getBoard(Integer.parseInt(bId));
		// writer하고 session 사람하고 다르면 수정 X
		String writer = board.getWriter();
		HttpSession session = request.getSession();
		String boardWriter = (String) session.getAttribute("user_id");
		// String[] test = boardWriter.split("@");
		// boardWriter = test[0];
		HashMap<String, Object> results = new HashMap<>();

		if (writer.equals(boardWriter)) {
			board.setContent(content);
			int result = boardService.modifyBoard(board);
			results.put("result", result);
			return results;
		} else {
			int result = 0;
			String msg = "자신이 작성한 글만 수정 가능합니다";
			results.put("result", result);
			results.put("msg", msg);
			return results;
		}

	}

	@RequestMapping("delete.do")
	public @ResponseBody HashMap<String, Object> delete(@RequestParam(name = "bId", required = true) String bId,
			HttpServletRequest request) throws UnsupportedEncodingException {

		Board board = boardService.getBoard(Integer.parseInt(bId));
		String writer = board.getWriter();
		HttpSession session = request.getSession();
		String boardWriter = (String) session.getAttribute("user_id");
		// String[] test = boardWriter.split("@");
		// boardWriter = test[0];

		if (writer.equals(boardWriter)) {
			boardService.removeBoard(Integer.parseInt(bId));
			int result = boardService.modifyBoard(board);
			HashMap<String, Object> results = new HashMap<>();
			results.put("result", result);
			return results;
		} else {
			int result = 0;
			String msg = "자신이 작성한 글만 삭제 가능합니다";
			HashMap<String, Object> results = new HashMap<>();
			results.put("result", result);
			results.put("msg", msg);
			return results;
		}
	}

}