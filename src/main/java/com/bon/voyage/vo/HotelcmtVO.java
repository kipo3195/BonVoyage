package com.bon.voyage.vo;

import java.util.Date;

import lombok.Data;

@Data
public class HotelcmtVO {

	private int hcno;
	private int hno;
	private String ctext;
	private String cauth;
	private Date regDate;
	private Date updatedate;
}
