package com.bamboo.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class Paging_DTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	
	public Paging_DTO(int pageNum, int total) {
		this.total = total;		
		this.endPage = (int) (Math.ceil(pageNum / 10.0)) * 10;
		this.startPage = endPage - 9;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / 10));
		
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
