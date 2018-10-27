package com.sammeta.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FirstController extends  HttpServlet {
	private String message;
	  public void init() throws ServletException {
	      // Do required initialization
	      message = "Welcome from My Test Server called by Elastic Bean Server...";
	   }
	  
	  @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		  validateHTTPRequest(req);
		  doPost(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 
		PrintWriter p= resp.getWriter();
	//	p.write(");
		p.println("<h1>" + message + "</h1>");
		 
	}
	
	private void validateHTTPRequest(HttpServletRequest httpRequest) {
		HttpSession httpSession = httpRequest.getSession(false);
		System.out.println("coming here "+httpSession.getId());
		if (httpSession == null) {
			try {
				
				throw new  Exception("Your Session Terminated..");
			} catch (Exception e) {
			 
				e.printStackTrace();
			} 
		}
	}
	

}
