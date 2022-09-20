package com.gndg.home.qna;

import java.sql.Date;

public class QnaDTO {
	
	private Long qna_Num;
	private String user_Id;
	private String qna_Cate;
	private String qna_Title;
	private String qna_Contents;
	private Date qna_Date;
	private String qna_Status;
	private String qna_Comment;
	private Long code;
	public Long getQna_Num() {
		return qna_Num;
	}
	public void setQna_Num(Long qna_Num) {
		this.qna_Num = qna_Num;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getQna_Cate() {
		return qna_Cate;
	}
	public void setQna_Cate(String qna_Cate) {
		this.qna_Cate = qna_Cate;
	}
	public String getQna_Title() {
		return qna_Title;
	}
	public void setQna_Title(String qna_Title) {
		this.qna_Title = qna_Title;
	}
	public String getQna_Contents() {
		return qna_Contents;
	}
	public void setQna_Contents(String qna_Contents) {
		this.qna_Contents = qna_Contents;
	}
	public Date getQna_Date() {
		return qna_Date;
	}
	public void setQna_Date(Date qna_Date) {
		this.qna_Date = qna_Date;
	}
	public String getQna_Status() {
		return qna_Status;
	}
	public void setQna_Status(String qna_Status) {
		this.qna_Status = qna_Status;
	}
	public String getQna_Comment() {
		return qna_Comment;
	}
	public void setQna_Comment(String qna_Comment) {
		this.qna_Comment = qna_Comment;
	}
	public Long getCode() {
		return code;
	}
	public void setCode(Long code) {
		this.code = code;
	}
	
	
	

}
