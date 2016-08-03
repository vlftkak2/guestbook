<%@page import="kr.ac.sungkyul.guestbook.dao.guestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.guestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String password=request.getParameter("password");
	String no=request.getParameter("no");
	
	guestbookVo vo=new guestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);

	guestbookDao dao=new guestbookDao();
	dao.delete(vo);
	
	
	response.sendRedirect("/guestbook/index.jsp");
%>