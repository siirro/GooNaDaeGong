package com.gndg.home.util;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class OrderPager extends Pager{
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate searchdate1;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate searchdate2;
	
	private Long payresultSearch;
	
	
	
	public Long getPayresultSearch() {
		return payresultSearch;
	}
	public void setPayresultSearch(Long payresultSearch) {
		this.payresultSearch = payresultSearch;
	}
	public LocalDate getSearchdate1() {
		if(this.searchdate1==null) {
			this.searchdate1=null;
		}
		
		return searchdate1;
	}
	public void setSearchdate1(LocalDate searchdate1) {
		this.searchdate1 = searchdate1;
	}
	public LocalDate getSearchdate2() {
		if(this.searchdate2==null) {
			this.searchdate2=null;
		}
		
		return searchdate2;
	}
	public void setSearchdate2(LocalDate searchdate2) {
		this.searchdate2 = searchdate2;
	}


}
