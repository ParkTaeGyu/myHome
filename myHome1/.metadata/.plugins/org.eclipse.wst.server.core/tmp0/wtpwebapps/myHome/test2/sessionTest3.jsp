<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- sessionTest3.jsp -->
<%
		//session.removeAttribute("mbId");
		session.invalidate();
%>
<script type="text/javascript">
	alert("로그아웃 되었습니다.\n 로그인 페이지로 이동합니다")
	location.href="sessionTest1.jsp"
</script>