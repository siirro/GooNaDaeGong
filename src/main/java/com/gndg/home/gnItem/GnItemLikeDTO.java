package com.gndg.home.gnItem;

import java.util.List;

public class GnItemLikeDTO {

	private Long like_num;
	private Long item_num;
	private String user_id;
	
	private GnItemDTO gnItemDTO;
	private List<GnItemFileDTO> gnItemFileDTOs;
	
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
    public GnItemDTO getGnItemDTO() {
        return gnItemDTO;
    }
    public void setGnItemDTO(GnItemDTO gnItemDTO) {
        this.gnItemDTO = gnItemDTO;
    }
    public List<GnItemFileDTO> getGnItemFileDTOs() {
        return gnItemFileDTOs;
    }
    public void setGnItemFileDTOs(List<GnItemFileDTO> gnItemFileDTOs) {
        this.gnItemFileDTOs = gnItemFileDTOs;
    }
	
}
