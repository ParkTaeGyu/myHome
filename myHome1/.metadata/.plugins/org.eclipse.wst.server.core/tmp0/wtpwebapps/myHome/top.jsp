<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>Ȩ������</title>
	<link rel="stylesheet" type="text/css" href="style.css"> 	
	<script type="text/javascript">
		function checkMember(){
			window.open("<%=request.getContextPath()%>/member/memberSsn.jsp", "checkMember", 
															"width=640, height=400")
		}
	</script>
</head>
<%
		String mbId = (String)session.getAttribute("mbId");
		boolean isLogin = false;
		if (mbId != null) isLogin = true;
%>
<body>
	<div align="center">
		<table border="1" width="800" height="600">
			<tr height="10%">
				<td align="center" colspan="2">
					<a href="<%=request.getContextPath()%>/index.jsp">����</a> | 
<%			if (isLogin){ %>
					<a href="<%=request.getContextPath()%>/login/logout.jsp">�α׾ƿ�</a> |
<%			}else { %>					
					<a href="<%=request.getContextPath()%>/login/login.jsp">�α���</a> |
<%			} %>					 
					<a href="javascript:checkMember()">ȸ������</a> | 
					<a href="<%=request.getContextPath()%>/member/memberAll.jsp">ȸ������</a> | 
					<a href="<%=request.getContextPath()%>/member/memberAll.jsp?mode=find">ȸ��ã��</a> |
					<a href="<%=request.getContextPath()%>/board/list.jsp">�Խ���</a> |
					<a href="<%=request.getContextPath()%>/board2/list.jsp">�ڷ��</a> | 
					<a href="<%=request.getContextPath()%>/company.jsp">ȸ��Ұ�</a>
				</td>
			</tr>
			<tr height="80%">
				<td width="20%" valign="top">
			<jsp:include page="/count/count.jsp" /><br>
<%		if (isLogin){ %>
				���̵� [<%=mbId%>]���� �α��� �� 
<%		}else { %>
				�α����� �� �ּ���
<%		} %>
				</td>
				<td width="80%">
				
				
				
				
				
				
				
				
				
				
				
				
				