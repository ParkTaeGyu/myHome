<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h2>Hello JSP!!</h2>

<%
	for (int i=1; i<10; ++i){
%>
		<h3>Hello JSP<%=i%></h3>
<%} %>	