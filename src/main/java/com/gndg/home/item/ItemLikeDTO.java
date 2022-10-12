package com.gndg.home.item;

import java.util.List;

public class ItemLikeDTO {

	private Long like_num;
	private Long item_num;
	private String user_id;
	
	private ItemDTO itemDTO;
	private List<ItemFileDTO> itemFileDTOs;
	
	public Long getLike_num() {
		return like_num;
	}
	public void setLike_num(Long like_num) {
		this.like_num = like_num;
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
    public ItemDTO getItemDTO() {
        return itemDTO;
    }
    public void setItemDTO(ItemDTO itemDTO) {
        this.itemDTO = itemDTO;
    }
    public List<ItemFileDTO> getItemFileDTOs() {
        return itemFileDTOs;
    }
    public void setItemFileDTOs(List<ItemFileDTO> itemFileDTOs) {
        this.itemFileDTOs = itemFileDTOs;
    }
  
	
}
