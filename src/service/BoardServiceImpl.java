package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IBoardDao;
import dao.IMemberDao;
import model.Board;

@Service("boardService")
public class BoardServiceImpl implements IBoardService{
	@Autowired
	private IBoardDao dao;
//	@Autowired
//	private IMemberDao member;
	@Override
	public int writeBoard(Board board, int parentId) {
//		dao.insertBoard(board);
		if(parentId == 0) {
			System.out.println(board);
			board.setGroupLevel(0);
			board.setGroupSeq(0);
			dao.insertBoard(board);
			board = dao.selectBoardByBId(board.getbId());
			board.setGroupId(board.getbId());
			dao.updateBoard(board);
		}
		else {
			Board parent = dao.selectBoardByBId(parentId);

			HashMap<String, Object> params = new HashMap<>();
			params.put("groupId", parent.getGroupId());
	 		params.put("groupSeq", parent.getGroupSeq()+1);
			dao.updateGroupSeq(params);

			board.setGroupId(parent.getGroupId());
			board.setGroupSeq(parent.getGroupSeq()+1);
			board.setGroupLevel(parent.getGroupLevel()+1);
			dao.insertBoard(board);
		}
		return board.getbId();
	}
	
	@Override
	public int modifyBoard(Board board) {
		// TODO Auto-generated method stub
		System.out.println(dao.updateBoard(board));
		return board.getbId();
	}

	@Override
	public void removeBoard(int bId) {
		// TODO Auto-generated method stub
		System.out.println(dao.deleteBoard(bId));
	}
	
	@Override
	public Board getBoard(int bId) {
		// TODO Auto-generated method stub
		return dao.selectBoardByBId(bId);
	}

	@Override
	public HashMap<String, Object> getBoardList(int page) {
		// TODO Auto-generated method stub
		System.out.println("전체 조회");
//		System.out.println("ddddd"+page);
		HashMap<String, Object> results = new HashMap<>();
		int getCount = dao.getBoardCount();
		int start = (page-1)/15*15+1;
		int end = ((page-1)/15+1)*15;
		int first = 1;
		int last = (getCount-1)/15+1;
		end = last < end? last: end;
		int skip = (page-1)*15;
		int count=15;
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("skip", skip);
		params.put("count", count);
		List<HashMap<String, Object>> boardList = dao.selectBoardList(params);
		results.put("start", start);
		results.put("end", end);
		results.put("first", first);
		results.put("last", last);
		results.put("current", page);
		results.put("boardList", boardList);
		return results;

	}

	@Override
	public HashMap<String, Object> getBoardList(int page, HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		System.out.println("[게임헤더로 조회]"+param.get("header"));
		HashMap<String, Object> results = new HashMap<>();
		int getCount = dao.getBoardCount();
		int start = (page-1)/10*10+1;
		int end = ((page-1)/10+1)*10;
		int first = 1;
		int last = (getCount-1)/10+1;
		end = last < end? last: end;
		int skip = (page-1)*10;
		int count=10;
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("skip", skip);
		params.put("count", count);
		params.put("header", param.get("header"));
		List<HashMap<String, Object>> boardList = dao.selectBoardList(params);
		results.put("start", start);
		results.put("end", end);
		results.put("first", first);
		results.put("last", last);
		results.put("current", page);
		results.put("header", param.get("header"));
		results.put("boardList", boardList);
		return results;
	}

	@Override
	public HashMap<String, Object> getCommentList(int groupId) {
		System.out.println("댓글 조회[그룹아이디: "+groupId+"]");
		HashMap<String, Object> results = new HashMap<>();
		List<Board> commentList = dao.selectCommentListBygroupId(groupId);
		results.put("commentList", commentList);
		return results;
	}
}
