package com.bamboo.persistence;

import com.bamboo.domain.User_DTO;

public interface UserDAO {

	public User_DTO read(int f_code)throws Exception;
	
}