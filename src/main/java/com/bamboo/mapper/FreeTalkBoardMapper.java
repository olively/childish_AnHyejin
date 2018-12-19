package com.bamboo.mapper;

import java.util.List;

import com.bamboo.domain.FreeTalkBoard_VO;

public interface FreeTalkBoardMapper {

	public int getRowCount();
	public List<FreeTalkBoard_VO> getNewestList(int pnum);
	public FreeTalkBoard_VO getRead(int p_bid);
	public int write(FreeTalkBoard_VO vo);
}
