package com.gndg.home.item;

import java.sql.Date;
import java.util.List;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.gndg.home.util.Category;


public class ItemDTO {
	
	private Long item_num;
	private String user_id;
	private String cate_num;
	private String cate1;
	private String cate2;
	private String cate3;
	private String cate4;
	private String item_title;
	private String item_contents;
	private Long item_price;
	private Long item_stock;
	private Long item_hit;
	private Date item_date;
	private List<ItemFileDTO> itemFileDTOs;

	private String FileName;
	private Category category;

	
	
	public String getFileName() {
		return FileName;
	}
	public void setFileName(String fileName) {
		FileName = fileName;
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
	public String getCate_num() {
		return cate_num;
	}
	public void setCate_num(String cate_num) {
		this.cate_num = cate_num;
	}
	public String getCate1() {
		return cate1;
	}
	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}
	public String getCate2() {
		return cate2;
	}
	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}
	public String getCate3() {
		return cate3;
	}
	public void setCate3(String cate3) {
		this.cate3 = cate3;
	}
	public String getCate4() {
		return cate4;
	}
	public void setCate4(String cate4) {
		this.cate4 = cate4;
	}
	public String getItem_title() {
		return item_title;
	}
	public void setItem_title(String item_title) {
		this.item_title = item_title;
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
	public Long getItem_stock() {
		return item_stock;
	}
	public void setItem_stock(Long item_stock) {
		this.item_stock = item_stock;
	}
	public Long getItem_hit() {
		return item_hit;
	}
	public void setItem_hit(Long item_hit) {
		this.item_hit = item_hit;
	}
	public Date getItem_date() {
		return item_date;
	}
	public void setItem_date(Date item_date) {
		this.item_date = item_date;
	}
    public List<ItemFileDTO> getItemFileDTOs() {
        return itemFileDTOs;
    }
    public void setItemFileDTOs(List<ItemFileDTO> itemFileDTOs) {
        this.itemFileDTOs = itemFileDTOs;
    }
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}

}
