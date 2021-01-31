package com.bon.voyage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bon.voyage.dao.HotelDAO;
import com.bon.voyage.vo.HotelVO;

@Service
public class HotelServiceImpl implements HotelService{
	
	@Inject
	HotelDAO dao;

	@Override
	public List<HotelVO> HotelList() {
		return dao.readList();
	}
	
	
	
	
	
}
