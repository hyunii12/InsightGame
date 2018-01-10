package model;

import java.util.Date;

public class Board {
	private int bId;
	private String header;
	private String writer;
	private Date regDate;
	private String content;
	private int groupId;
	private int groupSeq;
	private int groupLevel;
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public int getGroupSeq() {
		return groupSeq;
	}
	public void setGroupSeq(int groupSeq) {
		this.groupSeq = groupSeq;
	}
	public int getGroupLevel() {
		return groupLevel;
	}
	public void setGroupLevel(int groupLevel) {
		this.groupLevel = groupLevel;
	}
	@Override
	public String toString() {
		return "Board [bId=" + bId + ", header=" + header + ", writer=" + writer + ", regDate=" + regDate + ", content="
				+ content + ", groupId=" + groupId + ", groupSeq=" + groupSeq + ", groupLevel=" + groupLevel + "]";
	}
}
