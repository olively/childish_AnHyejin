package com.bamboo.persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.Board_DTO;
import com.bamboo.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private BoardMapper bm;
	
	
	
}
