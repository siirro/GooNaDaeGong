package com.gndg.home.cancel;

import java.sql.Date;

public class ExchangeDTO {
	
	private Long exc_num;
	private Long merchant_uid;
	private Date exc_date;
	private String exc_option;
	private String exc_memo;
	public Long getExc_num() {
		return exc_num;
	}
	public void setExc_num(Long exc_num) {
		this.exc_num = exc_num;
	}
	public Long getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(Long merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public Date getExc_date() {
		return exc_date;
	}
	public void setExc_date(Date exc_date) {
		this.exc_date = exc_date;
	}
	public String getExc_option() {
		return exc_option;
	}
	public void setExc_option(String exc_option) {
		this.exc_option = exc_option;
	}
	public String getExc_memo() {
		return exc_memo;
	}
	public void setExc_memo(String exc_memo) {
		this.exc_memo = exc_memo;
	}
	
	

}
