package com.bamboo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bamboo.domain.FreeTalkBoard_VO;
import com.bamboo.domain.Paging_DTO;
import com.bamboo.service.Board_Service;

import lombok.Setter;

@Controller
@RequestMapping("/main/*")
public class MainController {
	
	@Autowired private Board_Service freeTalk_Board_Service;
	
	//free talk
	@GetMapping("/freetalk")
	public String freetalk(@RequestParam(defaultValue="1") int pnum, Model model) {
		
		model.addAttribute("list", freeTalk_Board_Service.getNewestList(pnum));
		model.addAttribute("pageMaker", new Paging_DTO(pnum, freeTalk_Board_Service.getRowCount()));
		return "freetalk";
	}
	
	//gallery
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String gallery(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		//테스트 코드ㅇㄴㄹㄴㅇㄹ
		return "gallery";
	}
	
	//post
	@GetMapping("/post")
	public String post(int p_bid, Model model) {
		
		model.addAttribute("vo", freeTalk_Board_Service.getRead(p_bid));
		
		
		return "post";
	}
	
	//write
	@GetMapping("/write")
	public String write(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );

		return "write";
	}
	
	//introduce
		@RequestMapping(value = "/introduce", method = RequestMethod.GET)
		public String introduce(Locale locale, Model model) {
			
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );

			return "introduce";
		}
	

}
