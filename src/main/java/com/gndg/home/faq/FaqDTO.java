package com.gndg.home.faq;

import java.sql.Date;
import java.util.List;

public class FaqDTO {
	
	private Long faq_num;
	private String user_id;
	private Long faq_cate;
	private String faq_title;
	private String faq_contents;
	private Date faq_date;
	private List<FaqFileDTO> faqFileDTOs;
	
	public Long getFaq_num() {
		return faq_num;
	}
	public void setFaq_num(Long faq_num) {
		this.faq_num = faq_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Long getFaq_cate() {
		return faq_cate;
	}
	public void setFaq_cate(Long faq_cate) {
		this.faq_cate = faq_cate;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_contents() {
		return faq_contents;
	}
	public void setFaq_contents(String faq_contents) {
		this.faq_contents = faq_contents;
	}
	public Date getFaq_date() {
		return faq_date;
	}
	public void setFaq_date(Date faq_date) {
		this.faq_date = faq_date;
	}
	public List<FaqFileDTO> getFaqFileDTOs() {
		return faqFileDTOs;
	}
	public void setFaqFileDTOs(List<FaqFileDTO> faqFileDTOs) {
		this.faqFileDTOs = faqFileDTOs;
	}

	
}
