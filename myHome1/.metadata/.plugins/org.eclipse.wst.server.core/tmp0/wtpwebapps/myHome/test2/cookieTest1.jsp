<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cookieTest1.jsp -->
<%
		//��Ű ����
		Cookie ck = new Cookie("id", "admin");
		Cookie ck2 = new Cookie("pwd", "1234");
		
		//��Ű ���� �ֱ�
		ck.setMaxAge(7*24*60*60);
		ck2.setMaxAge(24*60*60);
		//���� : ck.setMaxAge(0) => ck�� �ش��ϴ� cookie�� ����
				
		//��Ű ����
		response.addCookie(ck);
		response.addCookie(ck2);
%>
<script type="text/javascript">
	alert("��Ű ���� ��!!")
</script>