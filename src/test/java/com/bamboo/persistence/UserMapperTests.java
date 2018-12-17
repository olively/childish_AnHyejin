package com.bamboo.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.domain.User_VO;
import com.bamboo.mapper.DepartmentMapper;
import com.bamboo.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.bamboo.config.RootConfig.class})
@Log4j
public class UserMapperTests {

	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;
	
	@Setter(onMethod_ = @Autowired)
	private DepartmentMapper departmentMapper;
	
	@Test
	public void departmentMapperTest() {

		departmentMapper.getList().stream().forEach(vo -> log.info(vo.getName()));
	}
	
	@Test
	public void readUserTest() {
		System.out.println(userMapper.signIn("20183308").getName());
	}
}
