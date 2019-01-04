package com.bamboo.persistence;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.bamboo.domain.FreeTalk.FreeTalkComment_VO;
import com.bamboo.mapper.FreeTalkCommentMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {com.bamboo.config.RootConfig.class})
@Log4j
public class FreeTalkCommentTest {

	@Setter(onMethod_ = {@Autowired})
	private FreeTalkCommentMapper freeTalkCommentMapper;
	
	@Test
	public void testMapper() {
		assertNotNull(freeTalkCommentMapper);
	}
	
	
	@Test
	public void writeTest() {
		FreeTalkComment_VO vo = new FreeTalkComment_VO();
		vo.setF_bid(1);
		vo.setF_uid("20183308");
		vo.setContent("댓글 테스트");
		vo.setWriter("leafy");
		log.info(freeTalkCommentMapper.write(vo));
	}
	
	@Test
	public void getListTest() {
		List<FreeTalkComment_VO> list = freeTalkCommentMapper.getList(1);
		list.forEach(i -> log.info(i));
	}
}
