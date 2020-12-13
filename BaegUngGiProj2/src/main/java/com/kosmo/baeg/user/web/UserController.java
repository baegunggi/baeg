package com.kosmo.baeg.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/login.do")
	public String login() {
		
		
		
		return "user/Login";
	}//////////////login
	
	@RequestMapping("/join.do")
	public String join() {
		
		
		return "user/Join";
	}////////////////join
	
	
}//////////////class
