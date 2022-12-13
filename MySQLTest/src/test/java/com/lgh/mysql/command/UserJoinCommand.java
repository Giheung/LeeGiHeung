package com.lgh.mysql.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import com.lgh.mysql.util.Constant;



public class UserJoinCommand implements testCommand {

	@Override
	public void execute(HttpServletRequest request, Model model) {
	BCryptPasswordEncoder passwordEncoder= Constant.passwordEncoder;	
	
	String bid = request.getParameter("id");
	String bpw = request.getParameter("pw");
	String baddress = request.getParameter("address");
	String bhobby = request.getParameter("hobby");
	String bmyself = request.getParameter("myself");
	}
}