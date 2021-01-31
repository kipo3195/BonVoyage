package com.bon.voyage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/")
public class MemberController {
	
	@RequestMapping("join")
	String showJoin() {
		
		return "member/join";
	}
	
	@RequestMapping("login")
	String showLogin() {
		
		return "member/login";
	}
}
