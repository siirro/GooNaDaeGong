package com.gndg.home.notice;

import java.sql.Date;

public class NoticeDTO {
	private Long nt_Num;
	private String user_Id;
	private String nt_Title;
	private String nt_Contents;
	private Date nt_Date;
	private String nt_Yn;
	private Long code;
	
	public Long getNt_Num() {
		return nt_Num;
	}
	public void setNt_Num(Long nt_Num) {
		this.nt_Num = nt_Num;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getNt_Title() {
		return nt_Title;
	}
	public void setNt_Title(String nt_Title) {
		this.nt_Title = nt_Title;
	}
	public String getNt_Contents() {
		return nt_Contents;
	}
	public void setNt_Contents(String nt_Contents) {
		this.nt_Contents = nt_Contents;
	}
	public Date getNt_Date() {
		return nt_Date;
	}
	public void setNt_Date(Date nt_Date) {
		this.nt_Date = nt_Date;
	}
	public String getNt_Yn() {
		return nt_Yn;
	}
	public void setNt_Yn(String nt_Yn) {
		this.nt_Yn = nt_Yn;
	}
	public Long getCode() {
		return code;
	}
	public void setCode(Long code) {
		this.code = code;
	}
	
	
	
	
	

}
