<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- result.jsp -->
<!-- ���̵� admin�̰�, ��й�ȣ�� 1234�϶��� �α��� �Ǿ��ٰ� �������� -->

<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String msg = null, url = null;
		
		if (id.equals("admin")){
			if (pwd.equals("1234")){
				session.setAttribute("mbId", "admin");
				msg = "�α��� �Ǿ����ϴ�. ȸ�������������� �̵��մϴ�.";
				url = "sessionTest2.jsp";
			}else {
				msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���!!";
				url = "sessionTest1.jsp";
			}
		}else {
			msg = "���� ���̵� �Դϴ�. �ٽ� �Է��� �ּ���!!";
			url = "sessionTest1.jsp";
		}
		
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>






