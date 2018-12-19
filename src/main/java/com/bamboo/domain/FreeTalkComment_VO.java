package com.bamboo.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FreeTalkComment_VO {
	private int p_cid;
	private int f_bid;
	private String f_uid;
	private String content;
	private Timestamp reg_date;
}
