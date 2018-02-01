package service;

import java.util.HashMap;
import java.util.List;

import model.Board;


public interface IBoardService {
	//글쓰기, 글읽기, 글수정, 글목록
	public int writeBoard(Board board, int parentId);
//	public HashMap<String, Object> readBoard(int bId);
	public int modifyBoard(Board board);
	public void removeBoard(int bId);
	public Board getBoard(int bId);	
	public HashMap<String, Object> getBoardList(int page);	
	public HashMap<String, Object> getBoardList(int page, HashMap<String, Object> param);
	public HashMap<String, Object> getCommentList(int groupId);	
	
}
