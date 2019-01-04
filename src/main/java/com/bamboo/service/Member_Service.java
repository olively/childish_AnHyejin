package com.bamboo.service;

import java.util.List;

import com.bamboo.domain.Department_VO;
import com.bamboo.domain.User_VO;

public interface Member_Service {

	public boolean signUp(User_VO user_vo);
	public boolean checkMember();
	public List<Department_VO> getDepartmentList();
}
