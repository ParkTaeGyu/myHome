<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="stdao" class="my.student.StudentDAO" />   
<!-- StudentDAO stdao = new StudentDAO();와 동일 -->

<!-- insert.jsp -->
<%
		//1. 넘어온 데이타 받기
		request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="stdto" class="my.student.StudentDTO" />
<jsp:setProperty property="*" name="stdto"/>
<!-- stdto.setId(request.getParameter("id")); -->		
		
<%	//2. 데이타 유효성 검사하기
		if (stdto.getId()==null || stdto.getId().trim().equals("") || 
				stdto.getName()==null || stdto.getName().trim().equals("") || 
				stdto.getCname()==null || stdto.getCname().trim().equals("")){%>
			<script type="text/javascript">
				alert("아이디, 이름, 학급명 모두 입력하셔야 합니다.!!")
				history.back()
			</script>					
<%		return;
		}  
		
		int res = stdao.insertStudent(stdto);
		  
		//6. 받은 결과로 분기하기
		if (res>0){%>
			<script type="text/javascript">
				alert("학생 등록 성공!! 학생 목록 페이지로 이동합니다.")
				location.href="list2.jsp"
			</script>	
<% 	}else {%>
			<script type="text/javascript">
				alert("학생 등록 실패!! 학생 등록 페이지로 이동합니다.")
				location.href="student.jsp"
			</script>
<%	}%>
<!-- table
	create table jspstudent
	(id varchar2(10),
	name varchar2(15),
	cname varchar2(25));	
 -->










