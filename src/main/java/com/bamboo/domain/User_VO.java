package com.bamboo.domain;

import java.util.List;

import lombok.Data;

@Data
public class User_VO {
	private String p_uid;
	private int f_code;
	private String name;
	private String alias;
	private String password;
	private boolean enabled;
	//private List<Auth_VO> authList;	
}
