<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- writeForm.jsp -->
<script type="text/javascript">
	function check(){
		if (f.writer.value==""){
			alert("�̸��� �Է��� �ּ���!!")
			f.writer.focus()
			return false
		}
		if (f.subject.value==""){
			alert("������ �Է��� �ּ���!!")
			f.subject.focus()
			return false
		}
		if (f.content.value==""){
			alert("������ �Է��� �ּ���!!")
			f.content.focus()
			return false
		}
		if (f.passwd.value==""){
			alert("��й�ȣ�� �Է��� �ּ���!!")
			f.passwd.focus()
			return false
		}
		return true
	}
</script>
<%
		//2������ writeForm ���� ���� �ȴ�.
		// - list���������� �۾��⸦ ������ : �Ѿ���� num���� ����
		// - content���������� ��۾��⸦ ������
		//   : �Ѿ���� num���� �ִ�(re_step, re_level) 
		int num=0, re_step=0, re_level=0;
		String snum = request.getParameter("num");
		if (snum != null){//��۾��⿡�� �Ѿ�Դٸ�
			num = Integer.parseInt(snum);
			re_step=Integer.parseInt(request.getParameter("re_step"));
			re_level=Integer.parseInt(request.getParameter("re_level"));
		}
%>
<%@ include file="../top.jsp"%>
<link rel="stylesheet" type="text/css" href="../style.css">
<%	if (!isLogin){%>
			<script type="text/javascript">
				alert("�α����� ���� �� �ּ���!!")
				location.href="<%=request.getContextPath()%>/login/login.jsp?mode=/myHome/board/writeForm.jsp"
			</script>
<%		return;
		}%>
<div align="center">
	<form name="f" action="writePro.jsp" method="post"
												onsubmit="return check()">
<!-- onsubmit : check()�Լ��� ���� �� ����� false�̸� submit ���� �ʴ´� -->											
	<input type="hidden" name="num" value="<%=num%>"/>
	<input type="hidden" name="re_step" value="<%=re_step%>"/>
	<input type="hidden" name="re_level" value="<%=re_level%>"/>
	<table border="1" width="60%">
		<tr bgcolor="yellow">
			<th colspan="2">�� �� ��</th>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�� ��</th>
			<td><input type="text" name="writer" class="box"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�� ��</th>
			<td><input type="text" name="subject" class="box" size="35"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">Email</th>
			<td><input type="text" name="email" class="box" size="35"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�� ��</th>
			<td>
				<textarea name="content" rows="10" cols="35" class="box"></textarea>
			</td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">��й�ȣ</th>
			<td><input type="password" name="passwd" class="box"></td>
		</tr>
		<tr>
			<td bgcolor="yellow" align="center" colspan="2">
				<input type="submit" value="�۾���">
				<input type="reset" value="�ٽ��ۼ�">
				<input type="button" value="�۸��" onClick="window.location='list.jsp'">
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="../bottom.jsp"%>













