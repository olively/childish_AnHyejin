package com.bamboo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class IntroduceController {
	
	//introduce
	@GetMapping("/introduce")
	public String introduce() {
		return "introduce";
	}
}
