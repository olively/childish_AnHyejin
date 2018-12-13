package com.bamboo.mapper;

import java.util.List;

import com.bamboo.domain.Board_DTO;

public interface BoardMapper {

	public boolean insertBoard(Board_DTO dto)throws Exception;
	public List<Board_DTO> getList();
	public Board_DTO infoBoard(int p_bid) throws Exception;
	
}
