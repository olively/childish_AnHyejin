package com.bamboo.service;

import com.bamboo.domain.User_VO;

public interface Member_Service {

	public boolean signUp(User_VO user_vo);
	public boolean signIn();
	public boolean checkMember();
}
