package com.gndg.home.pay;

import java.sql.Date;

import com.gndg.home.orders.OrdersDTO;

public class PayDTO {
	
	private String imp_uid;
	private Long merchant_uid;
	private Long pay_total;
	private Long pay_result;
	private Date pay_date;
	
	private OrdersDTO ordersDTO;
	
	
	
	public OrdersDTO getOrdersDTO() {
		return ordersDTO;
	}
	public void setOrdersDTO(OrdersDTO ordersDTO) {
		this.ordersDTO = ordersDTO;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public Long getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(Long merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public Long getPay_total() {
		return pay_total;
	}
	public void setPay_total(Long pay_total) {
		this.pay_total = pay_total;
	}
	public Long getPay_result() {
		return pay_result;
	}
	public void setPay_result(Long pay_result) {
		this.pay_result = pay_result;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	
	

}
