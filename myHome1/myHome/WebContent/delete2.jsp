<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="stdao" class="my.student.StudentDAO" />    
<%
		String id = request.getParameter("id");
		if (id==null || id.trim().equals("")){%>
			<script type="text/javascript">
				alert("���̵� �Է��ϼž� ������ �����մϴ�.")
				history.back()
			</script>	
<%		return;
		} 
		int res = stdao.deleteStudent(id);
		if (res>0){%>
		<script type="text/javascript">
			alert("�л� ���� ����!! �л� ��� �������� �̵��մϴ�.")
			location.href="list2.jsp"
		</script>	
<% 	}else {%>
		<script type="text/javascript">
			alert("�л� ���� ����!! �л� ���� �������� �̵��մϴ�.")
			location.href="student.jsp"
		</script>
<%	}%>













