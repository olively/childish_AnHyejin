package com.bamboo.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bamboo.domain.AuthUser;
import com.bamboo.domain.Paging_DTO;
import com.bamboo.domain.User_VO;
import com.bamboo.domain.FreeTalk.FreeTalkBoard_VO;
import com.bamboo.service.Board_Service;
import com.bamboo.service.Comment_Service;

import lombok.Setter;

@Controller
@RequestMapping("/main")
public class FreeTalkController {
	
	@Autowired private Board_Service freeTalk_Board_Service;
	@Autowired private Comment_Service freeTalk_Comment_Service;
	
	//free talk
	@GetMapping("/freetalk")
	public String freetalk(@RequestParam(defaultValue="1") int pnum, Model model) {
		
		model.addAttribute("list", freeTalk_Board_Service.getNewestList(pnum));
		model.addAttribute("pageMaker", new Paging_DTO(pnum, freeTalk_Board_Service.getRowCount()));
		return "freetalk";
	}
	
	//post
	@GetMapping("/freetalk/post")
	public String post(int p_bid, Model model) {
		
		model.addAttribute("post_vo", freeTalk_Board_Service.getRead(p_bid));
		model.addAttribute("comment_list", freeTalk_Comment_Service.getList(p_bid));
		
		return "post";
	}
	
	//write
	@GetMapping("/freetalk/write")
	public String write() {
		
		return "write";
	}
	
	@PostMapping("/freetalk/write_processing")
	public String write_processing(FreeTalkBoard_VO vo) {
		AuthUser authUser =  (AuthUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User_VO user = authUser.getUser();
		vo.setF_uid(user.getP_uid());
		vo.setWriter(user.getAlias());
		int pnum = freeTalk_Board_Service.write(vo);
		return "redirect:/main/freetalk/post?p_bid=" + pnum;
	}
	
	
}
