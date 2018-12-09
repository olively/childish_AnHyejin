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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class, ServletConfig.class, WebConfig.class })
public class BoardDAOTest {

	@Autowired
	private BoardDAO dao;
	
	private static Logger logger = logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test
	public void test() throws Exception {
		logger.info(dao.read(1).toString());
	}

}
