package com.bamboo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.bamboo.domain.AuthUser;
import com.bamboo.domain.User_VO;
import com.bamboo.mapper.UserMapper;

import lombok.Setter;

public class AuthUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = {@Autowired})
	private UserMapper userMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User_VO vo = userMapper.signIn(userid);
		return vo == null ? null : new AuthUser(vo);
	}

}
