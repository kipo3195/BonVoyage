package com.bon.voyage.vo;

import java.util.Date;

import lombok.Data;

@Data
public class HotelVO {

	private int hno;
	private String hname;
	private String hinfo;
	private String htel;
	private String himg;
	private int hlike;
	private int hlocationx;
	private int hlocationy;
	private Date regdate;
	private Date updatedate;
	
	
}
