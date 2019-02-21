<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, my.member.*" %>    
<%@ include file="../top.jsp" %>
<link rel="stylesheet" type="text/css" href="../style.css">
<jsp:useBean id="mbdao" class="my.member.MemberDAO" />
<%
		request.setCharacterEncoding("EUC-KR"); 
		String mode = request.getParameter("mode");
		if (mode==null){
			mode = "all";
		}
%>
<div align="center">
	<hr color="green" width="300">
<%	if (mode.equals("all")){ %>	
	<h2>회 원 목 록 보 기</h2>
<%	}else {%>
	<h2>회 원 찾 기</h2>
	<form name="f" method="post">
		<select name="search">
			<option value="id">아이디</option>
			<option value="name">이름</option>
		</select>
		<input type="text" name="searchString" class="box">
		<input type="submit" value="찾기">
	</form>

	<jsp:setProperty property="*" name="mbdao"/>
<%	} %>	
	<hr color="green" width="300">
	<table width="600" class="outline">
		<tr>
			<th class="m3">번호</th>
			<th class="m3">이름</th>
			<th class="m3">아이디</th>
			<th class="m3">이메일</th>
			<th class="m3">전화번호</th>
			<th class="m3">가입일</th>
			<th class="m3">수정/삭제</th>
		</tr>
		<!-- DB의 회원정보를 가져와 화면에 나타나게 해준다 -->
<%	List<MemberDTO> list = null;
		if (mode.equals("all")) list = mbdao.listMember();
		else list = mbdao.findMember();
		 
		for(MemberDTO dto : list){%>
		<tr>
			<td><%=dto.getNo()%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getId()%></td>
			<td><%=dto.getEmail()%></td>
			<td><%=dto.getAllHp()%></td>
			<td><%=dto.getJoindate()%></td>
			<td>
			 	<a href="member_update.jsp?no=<%=dto.getNo()%>">수정</a> |
				<a href="member_delete.jsp?no=<%=dto.getNo()%>">삭제</a>
			</td>
		</tr>
<%	} %>				
	</table>
</div>
<%@ include file="../bottom.jsp"%>









