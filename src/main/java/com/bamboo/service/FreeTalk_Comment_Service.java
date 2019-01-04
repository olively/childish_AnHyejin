package com.bamboo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bamboo.domain.FreeTalk.FreeTalkComment_VO;
import com.bamboo.mapper.FreeTalkBoardMapper;
import com.bamboo.mapper.FreeTalkCommentMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FreeTalk_Comment_Service implements Comment_Service<FreeTalkComment_VO>{

	private FreeTalkCommentMapper mapper;
	
	@Override
	public List<FreeTalkComment_VO> getList(int bno) {
		// TODO Auto-generated method stub
		return mapper.getList(bno);
	}

	@Override
	public int write(FreeTalkComment_VO vo) {
		// TODO Auto-generated method stub
		mapper.write(vo);
		return vo.getP_cid();
	}

	@Override
	public int delete(int cno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(FreeTalkComment_VO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FreeTalkComment_VO getRead(int cno) {
		// TODO Auto-generated method stub
		return mapper.getRead(cno);
	}

}
