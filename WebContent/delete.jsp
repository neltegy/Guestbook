<%@page import="java.util.List"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="com.javaex.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	int no2 = Integer.parseInt(no);
	
	GuestBookDao dao = new GuestBookDao();
	
	List<GuestBookVo> gblist = dao.getlist();
	for(GuestBookVo str : gblist){
		if(str.getNo() == no2){
			if(str.getPassword().equals(password)){
				dao.delete(no2);
			}
		}
		
	}
	//no 랑 password가 맞으면 삭제가능

	response.sendRedirect("list.jsp");
%>