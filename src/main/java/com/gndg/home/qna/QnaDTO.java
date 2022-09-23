package com.gndg.home.qna;

import java.sql.Date;

public class QnaDTO {
	
	private Long qna_num;
	private String user_id;
	private String qna_cate;
	private String qna_title;
	private String qna_contents;
	private Date qna_date;
	private String qna_status;
	private String qna_comment;
	private Long code;
	public Long getQna_num() {
		return qna_num;
	}
	public void setQna_num(Long qna_num) {
		this.qna_num = qna_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getQna_cate() {
		return qna_cate;
	}
	public void setQna_cate(String qna_cate) {
		this.qna_cate = qna_cate;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_contents() {
		return qna_contents;
	}
	public void setQna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getQna_status() {
		return qna_status;
	}
	public void setQna_status(String qna_status) {
		this.qna_status = qna_status;
	}
	public String getQna_comment() {
		return qna_comment;
	}
	public void setQna_comment(String qna_comment) {
		this.qna_comment = qna_comment;
	}
	public Long getCode() {
		return code;
	}
	public void setCode(Long code) {
		this.code = code;
	}
	
	
	
	
	
	

}
