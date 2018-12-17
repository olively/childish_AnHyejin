package com.bamboo.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class AuthUser extends User{

	private User_VO user;
	
	public AuthUser(User_VO vo) {
		super(vo.getP_uid(), vo.getPassword(), 
				Arrays.asList(new SimpleGrantedAuthority(Integer.toString( vo.getF_code() ))));
		this.user = vo;
	}

	public AuthUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		// TODO Auto-generated constructor stub
	}

}
