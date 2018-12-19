package com.bamboo.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FreeTalkBoard_VO {
	private int p_bid;
	private String f_uid;
	private String title;
	private String content;
	private int view_count;
	private int like_count;
	private Timestamp reg_date;
	private String writer;
}
