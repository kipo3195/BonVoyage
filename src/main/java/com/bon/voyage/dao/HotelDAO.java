package com.bon.voyage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bon.voyage.vo.HotelVO;

public interface HotelDAO {


	@Select("select * from bbyHotel")
	public List<HotelVO> readList();
	
}
