<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mbdao" class="my.member.MemberDAO" />
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		String ssn1 = request.getParameter("ssn1");
		String ssn2 = request.getParameter("ssn2");
		
		if (name==null || name.trim().equals("") || 
				ssn1==null || ssn1.trim().equals("") || 
				ssn2==null || ssn2.trim().equals("")){
			response.sendRedirect("memberSsn.jsp");
			return;
		}
		
		boolean isCheck = mbdao.checkMember(name, ssn1, ssn2);
		if (isCheck){%>
		<script type="text/javascript">
			alert("이미 회원가입 되었습니다. 로그인을 해 주세요")
			self.close()
		</script>	
<%	}else {%>
		<form name="f" action="member.jsp" method="post">
			<input type="hidden" name="name" value="<%=name%>"/>
			<input type="hidden" name="ssn1" value="<%=ssn1%>"/>
			<input type="hidden" name="ssn2" value="<%=ssn2%>"/>
		</form>
		<script type="text/javascript">
			alert("회원가입페이지로 이동합니다.")
			document.f.submit()
		</script>	
<%	}%>
















