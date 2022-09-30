package com.gndg.home.dgItem;

import java.sql.Date;
import java.util.List;

public class DgItemDTO {
	
	private Long item_num;
	private String cate_num;
	private String user_id;
	private String item_name;
	private String item_contents;
	private Long item_price;
	private Date item_date;
	private Long item_hit;
	private Long item_stock;
	private String item_deal;
	private String item_condition;
	private String item_yn;
	private Long code;
	
	
	public Long getItem_num() {
		return item_num;
	}
	public void setItem_num(Long item_num) {
		this.item_num = item_num;
	}
	public String getCate_num() {
		return cate_num;
	}
	public void setCate_num(String cate_num) {
		this.cate_num = cate_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_contents() {
		return item_contents;
	}
	public void setItem_contents(String item_contents) {
		this.item_contents = item_contents;
	}
	public Long getItem_price() {
		return item_price;
	}
	public void setItem_price(Long item_price) {
		this.item_price = item_price;
	}
	public Date getItem_date() {
		return item_date;
	}
	public void setItem_date(Date item_date) {
		this.item_date = item_date;
	}
	public Long getItem_hit() {
		return item_hit;
	}
	public void setItem_hit(Long item_hit) {
		this.item_hit = item_hit;
	}
	public Long getItem_stock() {
		return item_stock;
	}
	public void setItem_stock(Long item_stock) {
		this.item_stock = item_stock;
	}
	public String getItem_deal() {
		return item_deal;
	}
	public void setItem_deal(String item_deal) {
		this.item_deal = item_deal;
	}
	public String getItem_condition() {
		return item_condition;
	}
	public void setItem_condition(String item_condition) {
		this.item_condition = item_condition;
	}
	public String getItem_yn() {
		return item_yn;
	}
	public void setItem_yn(String item_yn) {
		this.item_yn = item_yn;
	}
	public Long getCode() {
		return code;
	}
	public void setCode(Long code) {
		this.code = code;
	}
	
}
