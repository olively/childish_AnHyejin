package com.bamboo.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.User_DTO;
import com.bamboo.mapper.BoardMapper;

import lombok.Setter;

@Repository
public class BoardDAOImpl {
	
	@Autowired
	private BoardMapper session;
	
	//private static String namespace;

	public User_DTO read(Integer f_code) throws Exception{
		return session.read(1);
	}
}
