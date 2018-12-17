package com.bamboo.persistence;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.config.RootConfig;
import com.bamboo.domain.Board_DTO;
import com.bamboo.domain.Test_DTO;
import com.bamboo.mapper.BoardMapper;
import com.bamboo.mapper.TestMapper;



//글쓰기의 기능을 하는 테스트 코드
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class})
public class BoardDAOTest {

	@Autowired
	BoardMapper bm;
	
	@Autowired
	TestMapper tm;
	
	@Inject
	private BoardDAO dao;
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
		
		
		if(bm.insertBoard(Bdto)) {
			logger.info("OK");
		}
	}
	//글목록들을 불러오는 테스트 코드
	@Test
	public void testGetList() throws Exception{
		
		List<Board_DTO> list = bm.getList();
		
		logger.info(list.toString());
		
	}
	//글 only one
	@Test
	public void testOnlyList() throws Exception{
		logger.info(bm.infoBoard(4).toString());
	}
	
	//페이징 처리
	@Test
	public void testListPage() throws Exception{
		int page = 3;
		List<Test_DTO> list = dao.listPage(page);
		
		for(Test_DTO test_DTO : list) {
			logger.info(test_DTO.getId() + ":" + test_DTO.getBtitle());;
		}
	}
}
