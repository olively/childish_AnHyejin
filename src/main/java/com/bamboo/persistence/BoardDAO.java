package com.bamboo.persistence;

import com.bamboo.domain.User_DTO;

public interface BoardDAO {

	public User_DTO read(Integer f_code)throws Exception;
	
}
