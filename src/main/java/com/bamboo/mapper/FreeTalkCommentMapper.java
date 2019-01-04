package com.bamboo.mapper;

import java.util.List;

import com.bamboo.domain.FreeTalk.FreeTalkComment_VO;

public interface FreeTalkCommentMapper {

	public List<FreeTalkComment_VO> getList(int p_bid);
	public int write(FreeTalkComment_VO vo);
	public FreeTalkComment_VO getRead(int p_cid);
	public int delete(int p_cid);
	public int update(FreeTalkComment_VO vo);
}
