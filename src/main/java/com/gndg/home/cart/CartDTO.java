package com.gndg.home.cart;

import java.util.List;

import com.gndg.home.item.ItemDTO;
import com.gndg.home.item.ItemFileDTO;
import com.gndg.home.member.MemberDTO;

public class CartDTO{

	private Long cart_num;
	private Long item_num;
	private String user_id;
	private Long item_count;
	
	//join용
	private ItemDTO gnItemDTO;
	private MemberDTO memberDTO;
	private List<ItemFileDTO> gnItemFileDTOs;
	
	//추가
	private String item_name;
	private	Long item_price;
	private Long totalPrice;
	private Long totalSum;
	
	
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
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Long getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(Long totalSum) {
		this.totalSum = totalSum;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public ItemDTO getGnItemDTO() {
        return gnItemDTO;
    }
    public void setGnItemDTO(ItemDTO gnItemDTO) {
        this.gnItemDTO = gnItemDTO;
    }
    public List<ItemFileDTO> getGnItemFileDTOs() {
        return gnItemFileDTOs;
    }
    public void setGnItemFileDTOs(List<ItemFileDTO> gnItemFileDTOs) {
        this.gnItemFileDTOs = gnItemFileDTOs;
    }
    public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public Long getItem_price() {
		return item_price;
	}
	public void setItem_price(Long item_price) {
		this.item_price = item_price;
	}
}
