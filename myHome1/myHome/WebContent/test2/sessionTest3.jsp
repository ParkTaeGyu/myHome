<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- sessionTest3.jsp -->
<%
		//session.removeAttribute("mbId");
		session.invalidate();
%>
<script type="text/javascript">
	alert("�α׾ƿ� �Ǿ����ϴ�.\n �α��� �������� �̵��մϴ�")
	location.href="sessionTest1.jsp"
</script>