<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="stdao" class="my.student.StudentDAO" />   
<!-- StudentDAO stdao = new StudentDAO();�� ���� -->

<!-- insert.jsp -->
<%
		//1. �Ѿ�� ����Ÿ �ޱ�
		request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="stdto" class="my.student.StudentDTO" />
<jsp:setProperty property="*" name="stdto"/>
<!-- stdto.setId(request.getParameter("id")); -->		
		
<%	//2. ����Ÿ ��ȿ�� �˻��ϱ�
		if (stdto.getId()==null || stdto.getId().trim().equals("") || 
				stdto.getName()==null || stdto.getName().trim().equals("") || 
				stdto.getCname()==null || stdto.getCname().trim().equals("")){%>
			<script type="text/javascript">
				alert("���̵�, �̸�, �б޸� ��� �Է��ϼž� �մϴ�.!!")
				history.back()
			</script>					
<%		return;
		}  
		
		int res = stdao.insertStudent(stdto);
		  
		//6. ���� ����� �б��ϱ�
		if (res>0){%>
			<script type="text/javascript">
				alert("�л� ��� ����!! �л� ��� �������� �̵��մϴ�.")
				location.href="list2.jsp"
			</script>	
<% 	}else {%>
			<script type="text/javascript">
				alert("�л� ��� ����!! �л� ��� �������� �̵��մϴ�.")
				location.href="student.jsp"
			</script>
<%	}%>
<!-- table
	create table jspstudent
	(id varchar2(10),
	name varchar2(15),
	cname varchar2(25));	
 -->










