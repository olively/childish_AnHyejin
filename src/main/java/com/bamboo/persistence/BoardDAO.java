package com.bamboo.persistence;

import java.util.List;

import com.bamboo.domain.Board_DTO;
import com.bamboo.domain.Test_DTO;

public interface BoardDAO {

	public List<Board_DTO> getList(int p_bid) throws Exception;
	public List<Test_DTO> listPage(int page) throws Exception;
	
}
