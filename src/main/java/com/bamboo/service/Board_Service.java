package com.bamboo.service;

import java.util.List;

public interface Board_Service<T> {

	public int getRowCount();
	public List<T> getNewestList(int pnum);
	public T getRead(int p_bid);
	public int write(T vo);
}
