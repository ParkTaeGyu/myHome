<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String book = request.getParameter("book");

%>

<h2>선택하신 도서는 <%=book%> 입니다</h2>