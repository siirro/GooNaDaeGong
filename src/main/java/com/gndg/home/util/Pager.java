package com.gndg.home.util;

public class Pager {
	
	private Long page;
	private Long startNum;
	private Long lastNum;
	private Long startRow;
	private Long lastRow;
	private Long perPage;
	private Long perBlock;
	
	//이전블럭의 유무- 이전블럭이 있으면 true, 없으면 false
	private boolean pre;
	//이전블럭의 유무- 다음블럭이 있으면 true, 없으면 false
	private boolean next;
	
	private String search;
	private String kind;
	
	// 생성자 - perPage:페이지당 글 몇개, perBlock:한화면에 클릭가능 페이지 개수
//	private Pager() {
//		this.perPage=10L;
//		this.perBlock=10L;
//	}
	
	
	// 1. 매퍼에 들어가는 startNum, lastNum을 자동으로 계산하는 getRowNum 메서드
	public void getRowNum()throws Exception{
		this.startRow = (this.getPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getPerPage()*this.getPage();
	}
	
	// 2. 각종 페이지수 계산 메서드 - totalCount는 매퍼에서 getCount생성 후 서비스에서 호출
	public void getNum(Long totalCount)throws Exception{
		//1. 전체글수(totalCount)로 (전체페이지수)totalPage 계산
		Long totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage()!=0) {
			totalPage +=1;
		}
		
		//cf)1-1. totalPage보다 page가 큰 경우 못가게 막기
		if(this.getPage()>totalPage) {
			this.setPage(totalPage);
		}
		
		//2. totalPage를 이용해 totalBlock(페이지한묶음의 수)
		Long totalBlock = totalPage/this.getPerBlock();
		if(totalPage%this.getPerBlock()!=0) {
			totalBlock +=1;
		}
		//3. page로 현재나의페이지블럭위치(curBlock) 구하기
		Long curBlock = this.getPage()/this.getPerBlock();
		if(this.getPage()%this.getPerBlock()!=0) {
			curBlock +=1;
		}
		
		//4. curBlock으로 페이지의 시작번호랑 끝번호 계산
		this.startNum = (curBlock-1)*this.getPerBlock()+1;
		this.lastNum = curBlock*this.getPerBlock();

		//5. 현재내가있는블럭이 토탈블락의 끝일때 (라스트넘이 전체페이지수보다 많아짐 방지)
		if(curBlock==totalBlock) {
			this.lastNum=totalPage;
		}
		System.out.println("토탈카운트는?"+totalCount);
		System.out.println("토탈페이지는?"+totalPage);
		System.out.println("토탈블럭은?"+totalBlock);
		
		//?? 검색결과가 0개면 라스트넘도 0이 되는 식 (제가 임의로 추가한거라 에러뜨면 사용x)
		if(totalBlock==0) {
			//this.lastNum=totalPage;
			
			this.lastNum=0L;
		}
		
		//6.이전, 다음 블럭의 유무
		if(curBlock>1) {
			pre=true;
		}
		
		if(curBlock<totalBlock) {
			next=true;
		}
	}
	
	public Long getPage() {
		if(this.page==null||this.page<1) {
			this.page=1L;
		}
		return page;
	}
	public void setPage(Long page) {
		this.page = page;
	}
	public Long getStartNum() {
		return startNum;
	}
	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}
	public Long getLastNum() {
		return lastNum;
	}
	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}
	public Long getPerPage() {
		if(this.perPage==null) {
			this.perPage=10L;
		}
		return perPage;
	}
	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getPerBlock() {
		if(this.perBlock==null) {
			this.perBlock=10L;
		}
		
		return perBlock;
	}
	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}
	public boolean isPre() {
		return pre;
	}
	public void setPre(boolean pre) {
		this.pre = pre;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
	
	

}
