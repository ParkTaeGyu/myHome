<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
		String mbId = (String)session.getAttribute("mbId");
		//session에 mbId란 키값으로 저장된 값이 있으면 그 값을 리턴,
		//없으면 null 이 된다.
		
		if (mbId == null) {%>
		<script type="text/javascript">
			alert("로그인을 하셔야만 볼수있는 페이지 입니다.")
			location.href="sessionTest1.jsp"
		</script>
<%		return;
		} %>		    
    
<h2>회원 전용 페이지</h2>

<h3>로그인한 회원만이 볼 수 있는 페이지 입니다.</h3>

<a href="sessionTest3.jsp">로그아웃</a>