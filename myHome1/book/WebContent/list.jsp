<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, book.*"%>
<jsp:useBean id="bdao" class="book.BookDAO" />
<%
		List<BookDTO> list = bdao.listBook(); 
%>
<html>
<head>
	<title>�������</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th>������</th>
				<th>������</th>
				<th>���ǻ�</th>
				<th>�ǸŰ�</th>
				<th>�԰���</th>
			</tr>
<%	if (list==null || list.size()==0){%>
			<tr>
				<td colspan="5">��ϵ� ������ �����ϴ�.</td>
			</tr>
<%	}else { 
			for(BookDTO dto : list){%>
			<tr>
				<td align="center"><%=dto.getBookname()%></td>
				<td align="center"><%=dto.getWriter()%></td>
				<td align="center"><%=dto.getPublisher()%></td>
				<td align="right"><%=dto.getPrice()%></td>
				<td align="center"><%=dto.getIndate()%></td>
			</tr>
<%		}
		} %>			
		</table>
	</div>
</body>
</html>