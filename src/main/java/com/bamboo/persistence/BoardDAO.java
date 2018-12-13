package com.bamboo.persistence;

import java.util.List;

import com.bamboo.domain.Board_DTO;

public interface BoardDAO {

	public List<Board_DTO> getList(int p_bid) throws Exception;
}
