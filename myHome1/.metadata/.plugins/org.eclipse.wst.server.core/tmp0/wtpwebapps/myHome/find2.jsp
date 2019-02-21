<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, my.student.*" %>    
<!-- find.jsp -->
<jsp:useBean id="stdao" class="my.student.StudentDAO" />
<html>
<head>	
	<title>학생찾기</title>
</head>
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		if (name==null || name.trim().equals("")){
			response.sendRedirect("student.jsp");
			return;
		}
%>
<body>
	<div align="center">
		<hr color="green" width="300">
			<h2><%=name%> 학 생 찾 기</h2>	
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">아이디</th>
				<th width="150">학생명</th>
				<th width="250">학급명</th>
			</tr>
<%		List<StudentDTO> find = stdao.findStudent(name);
			for(StudentDTO dto : find){%>
			<tr>
				<td><%=dto.getId()%></td>
				<td><%=dto.getName()%></td>
				<td><%=dto.getCname()%></td>
			</tr>		
<%		}%>			
		</table>
	</div>
</body>
</html>










