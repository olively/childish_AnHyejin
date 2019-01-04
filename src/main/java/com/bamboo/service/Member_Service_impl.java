package com.bamboo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bamboo.domain.AuthUser;
import com.bamboo.domain.Department_VO;
import com.bamboo.domain.User_VO;
import com.bamboo.mapper.DepartmentMapper;
import com.bamboo.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class Member_Service_impl implements Member_Service {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private DepartmentMapper departmentMapper;
	
	@Override
	public boolean signUp(User_VO user_vo) {
		// TODO Auto-generated method stub
		
		return userMapper.signUp(user_vo);
	}

	@Override
	public boolean checkMember() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Department_VO> getDepartmentList() {
		// TODO Auto-generated method stub
		return departmentMapper.getList();
	}
}
