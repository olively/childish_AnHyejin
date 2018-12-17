package com.bamboo.persistence;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bamboo.domain.Board_DTO;
import com.bamboo.domain.Test_DTO;
import com.bamboo.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.bamboo.mapper.TestMapper";

	@Override
	public List<Board_DTO> getList(int p_bid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Test_DTO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;
		return session.selectList(namespace + ".listPage", page);

	}
}
