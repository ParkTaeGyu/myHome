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
			alert("동일한 도서가 존재합니다. 다시 확인하시고 입력해 주세요!!")
		</script>		
<%		return;
		}
		int res = bdao.insertBook(bdto);
		if (res>0){%>
		<script type="text/javascript">
			alert("도서등록성공!! 도서목록페이지로 이동합니다.")
			location.href="list.jsp"
		</script>
<%	}else { %>
		<script type="text/javascript">
			alert("도서등록실패!! 도서등록페이지로 이동합니다.")
			location.href="book.jsp"
		</script>
<%	} %>		














