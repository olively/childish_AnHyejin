package com.bamboo.persistence;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.Board_DTO;
import com.bamboo.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private BoardMapper bm;
	
	
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	
	public void BoardInsert() throws Exception{
		Board_DTO Bdto = new Board_DTO();
		
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
		
		Bdto.setF_uid("20183308");
		Bdto.setTitle("aa");
		Bdto.setContent("aaa");
		Bdto.setView_count(1);
		Bdto.setLike_count(1);
		Bdto.setReg_date(timeStamp);
		
	}
	//글목록들을 불러오는 테스트 코드
	public void GetList() throws Exception{
		
		List<Board_DTO> list = bm.getList();
		
	}
	//글 only one
	public void OnlyList() throws Exception{
		logger.info(bm.infoBoard(4).toString());
	}
	
	
}
