<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="my.login.*"%>
<!-- login_ok.jsp -->

<jsp:useBean id="loginOk" class="my.login.LoginOk" />
<jsp:setProperty property="*" name="loginOk"/>

<%
		if (loginOk.getId() == null || loginOk.getId().trim().equals("")){
			response.sendRedirect("login.jsp");
			return;
		}

		String mode = request.getParameter("mode");
		System.out.println("mode = " + mode);
		
		String saveId = request.getParameter("saveId");
		//checkbox�� check�� �Ǿ������� on, check�� �ȵǾ� ������ null�� �����
		
		int res = loginOk.loginCheck();
		String msg = null, url = null;
		
		switch(res){
		case LoginOk.OK :
			Cookie ck = new Cookie("mbId", loginOk.getId());
			if (saveId == null){
				ck.setMaxAge(0);
			}else {
				ck.setMaxAge(24*60*60);
			}
			response.addCookie(ck);			
			
			session.setAttribute("mbId", loginOk.getId());
			msg = "�α��� �Ǿ����ϴ�.";
			if (mode != null && !(mode.trim().equals(""))){
				url = mode;	
			}else{
		 		url = request.getContextPath()+"/index.jsp";
			}	
		 	break;
		case LoginOk.NOT_ID :
			msg = "���� ���̵� �Դϴ�. �ٽ� �α��� �� �ּ���";
		 	url = "login.jsp";
		 	break;
		case LoginOk.NOT_PWD :
			msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �α��� �� �ּ���";
		 	url = "login.jsp";
		 	break;
		case LoginOk.ERROR :
			msg = "DB���� ���� �߻�!! �����ڿ��� ������ �ּ���";
		 	url = "login.jsp";
		 	break;
		}
		
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>










