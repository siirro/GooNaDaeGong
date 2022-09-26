package com.gndg.home.cart;

public class CartDTO {

	private Long cart_num;
	private Long item_num;
	private String user_id;
	private Long item_count;
	
	public Long getCart_num() {
		return cart_num;
	}
	public void setCart_num(Long cart_num) {
		this.cart_num = cart_num;
	}
	public Long getItem_num() {
		return item_num;
	}
	public void setItem_num(Long item_num) {
		this.item_num = item_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Long getItem_count() {
		return item_count;
	}
	public void setItem_count(Long item_count) {
		this.item_count = item_count;
	}
}
