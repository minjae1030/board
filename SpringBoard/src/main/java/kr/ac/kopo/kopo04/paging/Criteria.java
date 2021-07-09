package kr.ac.kopo.kopo04.paging;

import org.springframework.data.domain.Page;

public class Criteria {
	
	private int startBlock;
	private int endBlock;
	private int currentPage;
	private int totalPage;
	private final int pageBlock = 10;
	
	public Criteria(Page<?> pageable) {
		this.currentPage = pageable.getNumber();
		this.totalPage = pageable.getTotalPages();
		this.startBlock = ((currentPage) / pageBlock) * pageBlock + 1;
		this.endBlock = startBlock + pageBlock - 1;
		this.endBlock = (int) ((endBlock > totalPage) ? totalPage : endBlock);
	}
	
	
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
}
