<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, book.*"%>
<jsp:useBean id="bdao" class="book.BookDAO" />
<%
		request.setCharacterEncoding("EUC-KR");
		String search = request.getParameter("search");
		String searchString = request.getParameter("searchString");
		
		if (search==null || search.trim().equals("") 
				|| searchString==null || searchString.trim().equals("")){
			response.sendRedirect("book.jsp");
			return;
		}
		
		List<BookDTO> find = bdao.findBook(search, searchString);
%>
<html>
<head>
	<title>����ã��</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� ã ��</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th>������</th>
				<th>������</th>
				<th>���ǻ�</th>
				<th>�ǸŰ�</th>
				<th>�԰���</th>
			</tr>
<%	if (find==null || find.size()==0){%>
			<tr>
				<td colspan="5">ã���ô� ������ �����ϴ�.</td>
			</tr>
<%	}else { 
			for(BookDTO dto : find){%>
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
















