package com.lgh.mysql.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface testCommand {
	public void execute(HttpServletRequest request,Model model);
}
