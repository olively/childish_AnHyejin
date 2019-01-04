package com.bamboo.service;

import java.util.List;

public interface Comment_Service <T> {

	public List<T> getList(int bno);
	public T getRead(int cno);
	public int write(T vo);
	public int delete(int cno);
	public int update(T vo);
}
