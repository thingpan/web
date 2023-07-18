package com.web.controller2;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri=request.getRequestURI();
		System.out.println(uri);
		int idx=uri.lastIndexOf('/');
		uri=uri.substring(idx+1);
		String url="/WEB-INF/view/test";
		if("list".equals(uri)) {
		url+="testlist.jsp";
	}
	
	System.out.println(url);
	List<String> strList=new ArrayList<>();
	strList.add("25");
	strList.add("남");
	strList.add("이름");
	request.setAttribute("strList", strList);
	RequestDispatcher rd=request.getRequestDispatcher(url);
	
	rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
