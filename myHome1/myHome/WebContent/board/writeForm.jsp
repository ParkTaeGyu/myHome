<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- writeForm.jsp -->
<script type="text/javascript">
	function check(){
		if (f.writer.value==""){
			alert("이름을 입력해 주세요!!")
			f.writer.focus()
			return false
		}
		if (f.subject.value==""){
			alert("제목을 입력해 주세요!!")
			f.subject.focus()
			return false
		}
		if (f.content.value==""){
			alert("내용을 입력해 주세요!!")
			f.content.focus()
			return false
		}
		if (f.passwd.value==""){
			alert("비밀번호를 입력해 주세요!!")
			f.passwd.focus()
			return false
		}
		return true
	}
</script>
<%
		//2군데서 writeForm 으로 오게 된다.
		// - list페이지에서 글쓰기를 누를때 : 넘어오는 num값이 없다
		// - content페이지에서 답글쓰기를 누를때
		//   : 넘어오는 num값이 있다(re_step, re_level) 
		int num=0, re_step=0, re_level=0;
		String snum = request.getParameter("num");
		if (snum != null){//답글쓰기에서 넘어왔다면
			num = Integer.parseInt(snum);
			re_step=Integer.parseInt(request.getParameter("re_step"));
			re_level=Integer.parseInt(request.getParameter("re_level"));
		}
%>
<%@ include file="../top.jsp"%>
<link rel="stylesheet" type="text/css" href="../style.css">
<%	if (!isLogin){%>
			<script type="text/javascript">
				alert("로그인을 먼저 해 주세요!!")
				location.href="<%=request.getContextPath()%>/login/login.jsp?mode=/myHome/board/writeForm.jsp"
			</script>
<%		return;
		}%>
<div align="center">
	<form name="f" action="writePro.jsp" method="post"
												onsubmit="return check()">
<!-- onsubmit : check()함수를 실행 후 결과가 false이면 submit 하지 않는다 -->											
	<input type="hidden" name="num" value="<%=num%>"/>
	<input type="hidden" name="re_step" value="<%=re_step%>"/>
	<input type="hidden" name="re_level" value="<%=re_level%>"/>
	<table border="1" width="60%">
		<tr bgcolor="yellow">
			<th colspan="2">글 쓰 기</th>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이 름</th>
			<td><input type="text" name="writer" class="box"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">제 목</th>
			<td><input type="text" name="subject" class="box" size="35"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">Email</th>
			<td><input type="text" name="email" class="box" size="35"></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">내 용</th>
			<td>
				<textarea name="content" rows="10" cols="35" class="box"></textarea>
			</td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">비밀번호</th>
			<td><input type="password" name="passwd" class="box"></td>
		</tr>
		<tr>
			<td bgcolor="yellow" align="center" colspan="2">
				<input type="submit" value="글쓰기">
				<input type="reset" value="다시작성">
				<input type="button" value="글목록" onClick="window.location='list.jsp'">
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="../bottom.jsp"%>














