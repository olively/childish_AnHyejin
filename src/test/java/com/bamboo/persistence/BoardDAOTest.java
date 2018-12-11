package com.bamboo.persistence;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.config.RootConfig;
import com.bamboo.config.ServletConfig;
import com.bamboo.config.WebConfig;
import com.bamboo.mapper.BoardMapper;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class})
public class BoardDAOTest {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test
	public void tttt() throws Exception {
		logger.info(boardMapper.getClass().getName());
	}
	@Test
	public void test() throws Exception {
		logger.info(boardMapper.getRead(20183308).getName());
	}

}
