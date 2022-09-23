package com.gndg.home.gnItem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GnItemService {

	@Autowired
	private GnItemDAO gnItemDAO;
	
	public List<CategoryDTO> getCategory() throws Exception {
		return gnItemDAO.getCategory();
	}
	
	public int setGnItem(GnItemDTO gnItemDTO) throws Exception {
		return gnItemDAO.setGnItem(gnItemDTO);
	}
	
	public List<GnItemDTO> getGnList() throws Exception {
		return gnItemDAO.getGnList();
	}
	
	public GnItemDTO getGnDetail(GnItemDTO gnItemDTO) throws Exception {
		return gnItemDAO.getGnDetail(gnItemDTO);
	}
}
