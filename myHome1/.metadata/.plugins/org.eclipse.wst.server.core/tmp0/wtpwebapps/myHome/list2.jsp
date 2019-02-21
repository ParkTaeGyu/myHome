<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, my.student.*" %>    
<!-- list.jsp -->
<jsp:useBean id="stdao" class="my.student.StudentDAO" />
<html>
<head>
	<title>학생목록</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>학 생 목 록 보 기</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">아이디</th>
				<th width="150">학생명</th>
				<th width="250">학급명</th>
			</tr>
			<!-- DB에 자료를 불러와서 여기에 출력시키기 -->
<%		List<StudentDTO> list = stdao.listStudent();
			for(StudentDTO dto : list){
			//for(int i=0; i<list.size(); ++i){
			//	StudentDTO dto = list.get(i);
			// ---------------------------------------------------
			//Iterator<StudentDTO> it = list.iterator();
			//while(it.hasNext()){
			// 	StudentDTO dto = it.next();%>
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













