<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, my.student.*" %>    
<!-- list.jsp -->
<jsp:useBean id="stdao" class="my.student.StudentDAO" />
<html>
<head>
	<title>�л����</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">���̵�</th>
				<th width="150">�л���</th>
				<th width="250">�б޸�</th>
			</tr>
			<!-- DB�� �ڷḦ �ҷ��ͼ� ���⿡ ��½�Ű�� -->
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













