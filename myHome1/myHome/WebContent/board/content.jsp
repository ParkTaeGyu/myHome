<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="my.board.*"%>
<!-- content.jsp -->
<jsp:useBean id="dao" class="my.board.BoardDataBean" />
<%
		String num = request.getParameter("num");
		if (num == null || num.trim().equals("")){
			response.sendRedirect("list.jsp");
			return;
		}
		Cookie cks[] = request.getCookies();
		boolean isCk = false; 
		if (cks != null && cks.length != 0){
			for(int i=0; i<cks.length; ++i){
				String name = cks[i].getName();
				if (name.equals(num)){
					isCk = true;
				}
			}
		}
		BoardDBBean dto = null;	
		if (isCk){
			dto = dao.getBoard(Integer.parseInt(num), "check");
		}else{
 			Cookie ck = new Cookie(num, "check");
 			ck.setMaxAge(24*60*60);
 			response.addCookie(ck);
	 		dto = dao.getBoard(Integer.parseInt(num), "content");
		}	
%>
<%@ include file="../top.jsp"%>
<link rel="stylesheet" type="text/css" href="../style.css">
<%	if (!isLogin){%>
			<script type="text/javascript">
				alert("�α����� ���� �� �ּ���!!")
				location.href="<%=request.getContextPath()%>/login/login.jsp"
			</script>
<%		return;
		}%>
<div align="center">
	<b>�� �� �� �� ��</b>
	<table border="1" width="90%">
		<tr>
			<th bgcolor="yellow" width="20%">�۹�ȣ</th>
			<td align="center" width="30%"><%=dto.getNum()%></td>
			<th bgcolor="yellow" width="20%">��ȸ��</th>
			<td align="center" width="30%"><%=dto.getReadcount()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�ۼ���</th>
			<td align="center" width="30%"><%=dto.getWriter()%></td>
			<th bgcolor="yellow" width="20%">�ۼ���</th>
			<td align="center" width="30%"><%=dto.getReg_date()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">������</th>
			<td width="30%" colspan="3"><%=dto.getSubject()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�۳���</th>
			<td width="30%" colspan="3">
				<textarea rows="5" cols="60"><%=dto.getContent()%></textarea>
			</td>
		</tr>
		<tr>
			<td bgcolor="yellow" colspan="4" align="right">
				<input type="button" value="��۾���"
		onclick="window.location='writeForm.jsp?num=<%=dto.getNum()%>&re_step=<%=dto.getRe_step()%>&re_level=<%=dto.getRe_level()%>'">
				<input type="button" value="�ۼ���"
		onclick="window.location='updateForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" value="�ۻ���"
		onclick="window.location='deleteForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" value="�۸��" 
												onclick="window.location='list.jsp'">
			</td>
		</tr>
	</table>
</div>
<%@ include file="../bottom.jsp"%>


















