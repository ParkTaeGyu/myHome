<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="stdao" class="my.student.StudentDAO" />    
<%
		String id = request.getParameter("id");
		if (id==null || id.trim().equals("")){%>
			<script type="text/javascript">
				alert("아이디를 입력하셔야 삭제가 가능합니다.")
				history.back()
			</script>	
<%		return;
		} 
		int res = stdao.deleteStudent(id);
		if (res>0){%>
		<script type="text/javascript">
			alert("학생 삭제 성공!! 학생 목록 페이지로 이동합니다.")
			location.href="list2.jsp"
		</script>	
<% 	}else {%>
		<script type="text/javascript">
			alert("학생 삭제 실패!! 학생 삭제 페이지로 이동합니다.")
			location.href="student.jsp"
		</script>
<%	}%>













