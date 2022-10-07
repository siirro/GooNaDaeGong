package com.gndg.home.cancel;

import java.sql.Date;

public class CancelDTO {
	
	private Long can_num;
	private Long merchant_uid;
	private Date can_date;
	
	
	public Long getCan_num() {
		return can_num;
	}
	public void setCan_num(Long can_num) {
		this.can_num = can_num;
	}
	public Long getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(Long merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public Date getCan_date() {
		return can_date;
	}
	public void setCan_date(Date can_date) {
		this.can_date = can_date;
	}
	
	

}
