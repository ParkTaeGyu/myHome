<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
		//result.jsp�� �Ѿ�� �� �ޱ�
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String pwd = request.getParameter("pwd");
		String address = request.getParameter("address");
%>

<h2>�̸� : <%=name%></h2>    
<h2>��ȭ��ȣ : <%=tel%></h2> 
<h2>��й�ȣ : <%=pwd%></h2> 
<h2>�ּ� : <%=address%></h2> 