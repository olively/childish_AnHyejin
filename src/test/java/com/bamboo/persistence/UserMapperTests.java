package com.bamboo.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.domain.User_DTO;
import com.bamboo.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.bamboo.config.RootConfig.class})
@Log4j
public class UserMapperTests {

	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;
	
	
}
