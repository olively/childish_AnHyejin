package com.bamboo.domain;

import lombok.Data;

@Data
public class User_DTO {
	String p_uid;
	int f_code;
	String name;
	String alias;
	String password;
	String enabled;
}
