package com.lgh.mysql.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	@RequestMapping("/loginView")
	public String loginView() {
		System.out.println("loginView");
		return "loginView";
	}

	@RequestMapping("/joinView")
	public String joinView() {
		System.out.println("joinView");
		return "joinView";
	}
	
	@RequestMapping("/join")
	public String join() {
		System.out.println("join");
		return "join";
	}
	
	
}
