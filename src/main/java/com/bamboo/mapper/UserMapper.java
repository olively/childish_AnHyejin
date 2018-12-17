package com.bamboo.mapper;

import com.bamboo.domain.User_VO;

public interface UserMapper {

	public boolean signUp(User_VO user_vo);
	public User_VO signIn(String p_uid);
}
