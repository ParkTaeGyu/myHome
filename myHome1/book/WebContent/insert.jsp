<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="bdto" class="book.BookDTO" />
<jsp:setProperty property="*" name="bdto" />
<jsp:useBean id="bdao" class="book.BookDAO" />
<%
		if (bdto.getBookname()==null || bdto.getBookname().trim().equals("") 
			|| bdto.getWriter()==null || bdto.getWriter().trim().equals("") 
			|| bdto.getPublisher()==null || bdto.getPublisher().trim().equals("")
			|| bdto.getPrice()==0){
			response.sendRedirect("book.jsp");
			return;
		}
		if (bdao.isBookname(bdto.getBookname())){%>
		<script type="text/javascript">
			alert("������ ������ �����մϴ�. �ٽ� Ȯ���Ͻð� �Է��� �ּ���!!")
		</script>		
<%		return;
		}
		int res = bdao.insertBook(bdto);
		if (res>0){%>
		<script type="text/javascript">
			alert("������ϼ���!! ��������������� �̵��մϴ�.")
			location.href="list.jsp"
		</script>
<%	}else { %>
		<script type="text/javascript">
			alert("������Ͻ���!! ��������������� �̵��մϴ�.")
			location.href="book.jsp"
		</script>
<%	} %>		














