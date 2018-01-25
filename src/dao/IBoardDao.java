package dao;

import java.util.HashMap;
import java.util.List;

import model.Board;

public interface IBoardDao {
	/*
	 * Board - insert, update, delete, select(one, all)
	 * select one : by bId, writer
	 * select All : by *, header
	 */
	public int insertBoard(Board board);
	public int updateBoard(Board board);
	public int deleteBoard(int bId);
	public Board selectBoardByBId(int bId);
	public List<HashMap<String, Object>> selectBoardList(HashMap<String, Object> params);
	public int getBoardCount();
	public int updateGroupSeq(HashMap<String, Object> params);
	public List<Board> selectCommentListBygroupId(int groupId);
}
