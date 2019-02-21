<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, my.board.*" %>    
<!-- list.jsp -->
<jsp:useBean id="dao" class="my.board.BoardDataBean" />
<%@ include file="../top.jsp"%>
<link rel="stylesheet" type="text/css" href="../style.css">
<div align="center">
	<b>�� �� ��</b>
	<table border="0" width="90%">
		<tr bgcolor="yellow">
			<td align="right"><a href="writeForm.jsp">�۾���</a></td>
		</tr>
	</table>
	<table border="1" width="90%">
		<tr bgcolor="green">
			<th>��ȣ</th>
			<th width="40%">����</th>
			<th>�ۼ���</th>
			<th>�ۼ���</th>
			<th>��ȸ</th>
			<th>IP</th>
		</tr>
		<!-- DB�� �����ؼ� ����Ÿ�� �޾ƿ� ����ϱ� -->
<%
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null) {
			pageNum="1";
		}
		int pageSize = 5;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1) * pageSize + 1;
		int endRow = startRow + pageSize -1;
		int dbRow = dao.getCount();
		if (endRow>dbRow) endRow = dbRow;
 		int number = dbRow - (currentPage-1)*pageSize;

 		List<BoardDBBean> listBoard = dao.listBoard(startRow, endRow);
		if (listBoard == null || listBoard.size()==0){%>
		<tr>
			<td colspan="6">�Խõ� ���� �����ϴ�.</td>
		</tr>		
<%	}else {
			for(BoardDBBean dto : listBoard){%>
		<tr>
			<td><%=number--%></td>
			<td>
<%	if (dto.getRe_level()>0){ %>
			<img src="../img/level.gif" 
					width="<%=dto.getRe_level()*10%>">
			<img src="../img/re.gif">
<%	} %>			
				<a href="content.jsp?num=<%=dto.getNum()%>">
					<%=dto.getSubject()%>
				</a>
<%	if (dto.getReadcount()>10){ %>
			<img src="../img/hot.gif">
<%	}%>				
			</td>
			<td><%=dto.getWriter()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getReadcount()%></td>
			<td><%=dto.getIp()%></td>
		</tr>		
<%		}
		}%>
	</table>
<%
		if (dbRow>0){
			int pageBlock = 3;
			int dbPage = (dbRow-1) / pageSize + 1;
			int startPage = ((currentPage-1)/pageBlock*pageBlock)+1;
			//currentpage : 123 -> 0
			//currentPage : 456 -> 3
			//currentPage : 789 -> 6
			int endPage = startPage + pageBlock - 1;
			if (endPage>dbPage) endPage = dbPage;
			if (startPage>pageBlock){%>
				[<a href="list.jsp?pageNum=<%=startPage-pageBlock%>">����</a>]			
<%		}
			for(int i=startPage; i<=endPage; ++i){%>
				[<a href="list.jsp?pageNum=<%=i%>"><%=i%></a>]
<%		}
			if (endPage < dbPage){%>
				[<a href="list.jsp?pageNum=<%=startPage+pageBlock%>">����</a>]			
<%		}
		}		
%>	
</div>
<%@ include file="../bottom.jsp"%>











