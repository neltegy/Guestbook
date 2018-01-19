<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	String content = request.getParameter("content");
	
	GuestBookVo vo = new GuestBookVo(name,pass,content);
	GuestBookDao dao = new GuestBookDao();
	dao.insert(vo);
	
	response.sendRedirect("list.jsp");
%>