<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- updatePro.jsp -->
<%
		request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="dto" class="my.board.BoardDBBean" />
<jsp:setProperty property="*" name="dto" />
<jsp:useBean id="dao" class="my.board.BoardDataBean" />

<%
		if (dto.getWriter()==null || dto.getWriter().trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		int res = dao.updateBoard(dto);
		if (res>0){%>
		<script type="text/javascript">
			alert("게시글 수정 성공!! 글목록페이지로 이동합니다.")
			location.href="list.jsp"
		</script>				
<%	}else if (res==0){%>
		<script type="text/javascript">
			alert("게시글 수정 실패!! 글보기페이지로 이동합니다.")
			location.href="content.jsp?num=<%=dto.getNum()%>"
		</script>	
<%	}else {%>
		<script type="text/javascript">
			alert("비밀번호가 틀렸습니다. 다시 입력해 주세요.")
			location.href="updateForm.jsp?num=<%=dto.getNum()%>"
		</script>	
	
<%	}%>		





