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
			alert("�Խñ� ���� ����!! �۸���������� �̵��մϴ�.")
			location.href="list.jsp"
		</script>				
<%	}else if (res==0){%>
		<script type="text/javascript">
			alert("�Խñ� ���� ����!! �ۺ����������� �̵��մϴ�.")
			location.href="content.jsp?num=<%=dto.getNum()%>"
		</script>	
<%	}else {%>
		<script type="text/javascript">
			alert("��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է��� �ּ���.")
			location.href="updateForm.jsp?num=<%=dto.getNum()%>"
		</script>	
	
<%	}%>		





