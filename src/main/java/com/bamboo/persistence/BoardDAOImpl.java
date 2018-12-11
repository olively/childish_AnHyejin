package com.bamboo.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.User_DTO;
import com.bamboo.mapper.BoardMapper;

import lombok.Setter;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper session;
	
	//private static String namespace;

	public User_DTO read(int uid) throws Exception{
		return session.getRead(uid);
	}
}
