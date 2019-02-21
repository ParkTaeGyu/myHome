<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
		//result.jsp로 넘어온 값 받기
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String pwd = request.getParameter("pwd");
		String address = request.getParameter("address");
%>

<h2>이름 : <%=name%></h2>    
<h2>전화번호 : <%=tel%></h2> 
<h2>비밀번호 : <%=pwd%></h2> 
<h2>주소 : <%=address%></h2> 