package com.bamboo.mapper;

import java.util.List;

import com.bamboo.domain.FreeTalkBoard_VO;

public interface FreeTalkBoardMapper {

	public List<FreeTalkBoard_VO> getList();
	public FreeTalkBoard_VO getRead(int p_bid);
	public boolean write(FreeTalkBoard_VO vo);
}
