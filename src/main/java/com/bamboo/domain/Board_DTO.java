package com.bamboo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board_DTO {
	
	int p_bid;
	String f_uid;
	String title;
	String content;
	int view_count;
	int like_count;
	String reg_date;
	

}
