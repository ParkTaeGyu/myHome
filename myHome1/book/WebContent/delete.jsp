<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bdao" class="book.BookDAO" />
<%
		request.setCharacterEncoding("EUC-KR");
		String bookname = request.getParameter("bookname");
		if (bookname==null || bookname.trim().equals("")){
			response.sendRedirect("book.jsp");
			return;
		}
		
		int res = bdao.deleteBook(bookname);
		if (res>0){%>
		<script type="text/javascript">
			alert("������������!! ��������������� �̵��մϴ�.")
			location.href="list.jsp"
		</script>
<%	}else { %>
		<script type="text/javascript">
			alert("������������!! ���������������� �̵��մϴ�.")
			location.href="book.jsp"
		</script>
<%	} %>	









