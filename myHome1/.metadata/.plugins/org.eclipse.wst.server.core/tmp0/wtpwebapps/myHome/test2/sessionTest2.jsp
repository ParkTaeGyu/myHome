<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
		String mbId = (String)session.getAttribute("mbId");
		//session�� mbId�� Ű������ ����� ���� ������ �� ���� ����,
		//������ null �� �ȴ�.
		
		if (mbId == null) {%>
		<script type="text/javascript">
			alert("�α����� �ϼž߸� �����ִ� ������ �Դϴ�.")
			location.href="sessionTest1.jsp"
		</script>
<%		return;
		} %>		    
    
<h2>ȸ�� ���� ������</h2>

<h3>�α����� ȸ������ �� �� �ִ� ������ �Դϴ�.</h3>

<a href="sessionTest3.jsp">�α׾ƿ�</a>