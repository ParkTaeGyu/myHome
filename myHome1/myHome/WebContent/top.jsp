<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>홈페이지</title>
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
					<a href="<%=request.getContextPath()%>/index.jsp">메인</a> | 
<%			if (isLogin){ %>
					<a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a> |
<%			}else { %>					
					<a href="<%=request.getContextPath()%>/login/login.jsp">로그인</a> |
<%			} %>					 
					<a href="javascript:checkMember()">회원가입</a> | 
					<a href="<%=request.getContextPath()%>/member/memberAll.jsp">회원보기</a> | 
					<a href="<%=request.getContextPath()%>/member/memberAll.jsp?mode=find">회원찾기</a> |
					<a href="<%=request.getContextPath()%>/board/list.jsp">게시판</a> |
					<a href="<%=request.getContextPath()%>/board2/list.jsp">자료실</a> | 
					<a href="<%=request.getContextPath()%>/company.jsp">회사소개</a>
				</td>
			</tr>
			<tr height="80%">
				<td width="20%" valign="top">
			<jsp:include page="/count/count.jsp" /><br>
<%		if (isLogin){ %>
				아이디 [<%=mbId%>]님이 로그인 중 
<%		}else { %>
				로그인을 해 주세요
<%		} %>
				</td>
				<td width="80%">
				
				
				
				
				
				
				
				
				
				
				
				
				