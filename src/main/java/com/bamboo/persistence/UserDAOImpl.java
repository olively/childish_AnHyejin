package com.bamboo.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.User_DTO;
import com.bamboo.mapper.UserMapper;


@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private UserMapper um;
	

	public User_DTO read(int uid) throws Exception{
		return um.getRead(uid);
	}
	
}
