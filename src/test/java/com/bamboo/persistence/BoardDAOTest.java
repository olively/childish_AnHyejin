package com.bamboo.persistence;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.config.RootConfig;
import com.bamboo.domain.Board_DTO;
import com.bamboo.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class})
public class BoardDAOTest {

	@Autowired
	BoardMapper bm;
	
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test
	public void testBoardInsert() throws Exception{
		Board_DTO Bdto = new Board_DTO();
		
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
		
		
		Bdto.setF_uid("20183308");
		Bdto.setTitle("aa");
		Bdto.setContent("aaa");
		Bdto.setView_count(1);
		Bdto.setLike_count(1);
		Bdto.setReg_date(timeStamp);
		
		
		if(bm.Insert(Bdto)) {
			logger.info("OK");
		}
	}
	@Test
	public void testGetList() throws Exception{
		
		List<Board_DTO> list = bm.getList();
		
		logger.info(list.get(1).getReg_date());
		
	}
}
