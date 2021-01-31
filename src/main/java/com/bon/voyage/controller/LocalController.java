package com.bon.voyage.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bon.voyage.service.HotelServiceImpl;

@RestController
@RequestMapping("voyage")
public class LocalController {

	@Inject
	HotelServiceImpl HS;
	
	@RequestMapping("/jeju")
	public ModelAndView Gojeju(ModelAndView mav) {
		mav.setViewName("/voyage/jeju");
		mav.addObject("hotel", HS.HotelList());
		System.out.println("호텔 리스트"+HS.HotelList());
		return mav;
	}

	
	
	
	
	
	
}
