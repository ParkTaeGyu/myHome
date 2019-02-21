<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mbdto" class="my.member.MemberDTO" />
<jsp:setProperty property="*" name="mbdto"/>
<jsp:useBean id="mbdao" class="my.member.MemberDAO" />
<%
		if (mbdto.getName() == null || mbdto.getName().trim().equals("")){
			response.sendRedirect("memberSsn.jsp");
			return;
		}

		int res = mbdao.insertMember(mbdto); 
		if (res>0){%>
		<script type="text/javascript">
			alert("회원가입 성공!! 로그인 해 주세요")
			self.close()
		</script>	
<%	}else {%>
		<script type="text/javascript">
			alert("회원가입 실패!! 다시 가입해 주세요")
			location.href="memberSsn.jsp"
		</script>	
<%	}%>














