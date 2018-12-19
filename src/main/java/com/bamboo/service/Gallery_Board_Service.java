package com.bamboo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bamboo.domain.FreeTalkBoard_VO;

@Service
public class Gallery_Board_Service implements Board_Service<FreeTalkBoard_VO> {

	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FreeTalkBoard_VO> getNewestList(int pnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FreeTalkBoard_VO getRead(int p_bid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int write(FreeTalkBoard_VO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
