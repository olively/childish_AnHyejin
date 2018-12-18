package com.bamboo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bamboo.domain.FreeTalkBoard_VO;
import com.bamboo.mapper.FreeTalkBoardMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FreeTalk_Board_Service implements Board_Service<FreeTalkBoard_VO> {

	private FreeTalkBoardMapper boardMapper;
	
	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return boardMapper.getRowCount();
	}
	
	@Override
	public List<FreeTalkBoard_VO> getNewestList(int pnum) {
		// TODO Auto-generated method stub
		
		List<FreeTalkBoard_VO> newestBoardList = boardMapper.getNewestList(pnum);
		
		for (FreeTalkBoard_VO vo : newestBoardList) {
			if (vo.getContent().length() > 30) {
				vo.setContent(vo.getContent().substring(0, 30) + "...");
			}
		}
		
		return newestBoardList;
	}

	@Override
	public FreeTalkBoard_VO getRead(int p_bid) {
		// TODO Auto-generated method stub
		return boardMapper.getRead(p_bid);
	}

	@Override
	public boolean write(FreeTalkBoard_VO vo) {
		// TODO Auto-generated method stub
		return boardMapper.write(vo);
	}
}
