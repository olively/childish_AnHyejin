package com.bamboo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bamboo.domain.AuthUser;
import com.bamboo.domain.User_VO;
import com.bamboo.domain.FreeTalk.FreeTalkComment_VO;
import com.bamboo.service.Comment_Service;

@RestController
@RequestMapping("/main")
public class FreeTalkCommentController {

	@Autowired Comment_Service freeTalk_Comment_Service;
	
	@PostMapping(value = "/freetalk/write_comment",
			consumes = "application/json",
			produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public FreeTalkComment_VO write_comment(@RequestBody FreeTalkComment_VO vo) {
		AuthUser authUser =  (AuthUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User_VO user = authUser.getUser();
		vo.setF_uid(user.getP_uid());
		vo.setWriter(user.getAlias());
		int comment_Num = freeTalk_Comment_Service.write(vo);
		FreeTalkComment_VO result = (FreeTalkComment_VO) freeTalk_Comment_Service.getRead(comment_Num);
		return result;
	}
}
