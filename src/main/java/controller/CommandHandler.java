package controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
	
	String process(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
}
