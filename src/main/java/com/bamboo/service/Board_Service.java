package com.bamboo.service;

import java.util.List;

public interface Board_Service<T> {

	public List<T> getList();
	public T getRead();
	public boolean write();
}
