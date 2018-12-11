package com.bamboo.persistence;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.config.RootConfig;
import com.bamboo.domain.User_DTO;
import com.bamboo.mapper.UserMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class})
public class UserDAOTest {

	@Autowired
	private UserMapper usermapper;
	
	private static Logger logger = LoggerFactory.getLogger(UserDAOTest.class);
	
	@Test
	public void tttt() throws Exception {
		logger.info(usermapper.getClass().getName());
	}
	
	
	@Test
	public void testList() throws Exception {
		logger.info(usermapper.getRead(20183308).getName());
	}
	
	
	@Test
	public void testInsert() throws Exception{
		User_DTO dto = new User_DTO();
		dto.setP_uid("20183307");
		dto.setF_code(1);
		dto.setName("ahn");
		dto.setAlias("chang");
		dto.setPassword("ho");
		usermapper.Insert(dto);
	}

}