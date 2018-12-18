package com.bamboo.persistence;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.domain.FreeTalkBoard_VO;
import com.bamboo.mapper.FreeTalkBoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.bamboo.config.RootConfig.class})
@Log4j
public class FreeTalkBoardTest {

	@Setter(onMethod_ = {@Autowired})
	private FreeTalkBoardMapper boardMapper;
	
	@Test
	public void boardTest() {
		Long time = System.currentTimeMillis();
		log.info(boardMapper.getRowCount());
		log.info(System.currentTimeMillis() - time);
	}
	
	@Test
	public void newestBoardTest() {
		List<FreeTalkBoard_VO> list = boardMapper.getNewestList(1);
		int i = 0;
		for (FreeTalkBoard_VO v : list) {
			log.info(i++ + " : " + v.getWriter());
		}
	}
}
