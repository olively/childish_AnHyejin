package com.bamboo.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bamboo.domain.AuthUser;
import com.bamboo.domain.User_VO;
import com.bamboo.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class Member_Service_impl implements Member_Service {

	private UserMapper userMapper;
	
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
}
