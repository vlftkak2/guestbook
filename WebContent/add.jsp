<%@page import="kr.ac.sungkyul.guestbook.dao.guestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.guestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content=request.getParameter("content");

	guestbookVo vo = new guestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setIntroduction(content);

	guestbookDao dao=new guestbookDao();
	boolean result=dao.insert(vo);
	
	response.sendRedirect("/guestbook/index.jsp");
%>
