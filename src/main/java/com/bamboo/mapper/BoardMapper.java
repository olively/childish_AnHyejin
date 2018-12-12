package com.bamboo.mapper;

import java.util.List;

import com.bamboo.domain.Board_DTO;

public interface BoardMapper {

	public boolean Insert(Board_DTO dto)throws Exception;
	public List<Board_DTO> getList();
}
