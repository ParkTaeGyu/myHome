<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, book.*"%>
<jsp:useBean id="bdao" class="book.BookDAO" />
<%
		List<BookDTO> list = bdao.listBook(); 
%>
<html>
<head>
	<title>도서목록</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>도 서 목 록 보 기</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th>도서명</th>
				<th>지은이</th>
				<th>출판사</th>
				<th>판매가</th>
				<th>입고일</th>
			</tr>
<%	if (list==null || list.size()==0){%>
			<tr>
				<td colspan="5">등록된 도서가 없습니다.</td>
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