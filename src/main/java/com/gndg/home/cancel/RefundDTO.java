package com.gndg.home.cancel;

import java.sql.Date;

public class RefundDTO {
	
	private Long ref_num;
	private Long merchant_uid;
	private Date ref_date;
	private String ref_memo;
	
	public Long getRef_num() {
		return ref_num;
	}
	public void setRef_num(Long ref_num) {
		this.ref_num = ref_num;
	}
	public Long getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(Long merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public Date getRef_date() {
		return ref_date;
	}
	public void setRef_date(Date ref_date) {
		this.ref_date = ref_date;
	}
	public String getRef_memo() {
		return ref_memo;
	}
	public void setRef_memo(String ref_memo) {
		this.ref_memo = ref_memo;
	}
	

}
