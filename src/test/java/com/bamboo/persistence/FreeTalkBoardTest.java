package com.bamboo.persistence;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bamboo.domain.FreeTalkBoard_VO;
import com.bamboo.mapper.FreeTalkBoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.bamboo.config.RootConfig.class})
@Log4j
public class FreeTalkBoardTest {

	@Setter(onMethod_ = {@Autowired})
	private FreeTalkBoardMapper boardMapper;
	
	@Test
	public void boardTest() {
		Long time = System.currentTimeMillis();
		log.info(boardMapper.getRowCount());
		log.info(System.currentTimeMillis() - time);
	}
	
	@Test
	public void newestBoardTest() {
		List<FreeTalkBoard_VO> list = boardMapper.getNewestList(1);
		int i = 0;
		for (FreeTalkBoard_VO v : list) {
			log.info(i++ + " : " + v.getWriter());
		}
	}
	
	@Test
	public void insertTest() {
		FreeTalkBoard_VO vo = new FreeTalkBoard_VO();
		vo.setF_uid("20183308");
		vo.setTitle("테스트 제목입니다.");
		vo.setContent("동해물과 백두산이 마르고 닮도록\n하나님이 보우하사 우리나라 만세\n 무궁화 삼천리 화려강산\n대한 사람 대한으로 길이보전하세.");
		vo.setWriter("leafy");
		boardMapper.write(vo);
	}
}
