<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");//post��Ŀ����� �ѱ�ó��
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
%>

<h2>���� : <%=subject%></h2>

<h3>����</h3>
<h3><%=content%></h3>