package com.bamboo.mapper;

import com.bamboo.domain.User_DTO;

public interface UserMapper {

	public boolean signUp(User_DTO user_dto);
	public boolean signIn(User_DTO user_dto);
}
