package com.bamboo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bamboo.domain.User_VO;
import com.bamboo.mapper.DepartmentMapper;
import com.bamboo.service.Member_Service;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
public class WelcomeController {
	
	@Autowired
	private DepartmentMapper departmentMapper;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private Member_Service member_Service;
	
	@GetMapping("/")
	public String home() {
		return "main";
	}
	
	//login
	@GetMapping("/login")
	public String login() {

		return "login";
	}
	
	//signup
	@GetMapping("/signup")
	public String signup(Model model) {

		model.addAttribute("department", departmentMapper.getList());
		return "signup";
	}
	
	@PostMapping("/signup_processing")
	public String signup_processing(User_VO user_vo) {
		user_vo.setPassword(passwordEncoder.encode(user_vo.getPassword()));
		if(member_Service.signUp(user_vo))
			return "login";
		else
			return "signup";
	}
}
