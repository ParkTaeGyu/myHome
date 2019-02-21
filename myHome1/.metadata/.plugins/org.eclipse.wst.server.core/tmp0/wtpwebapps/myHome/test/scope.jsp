<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="obj" class="my.scope.Counter" scope="request" />
<jsp:setProperty property="*" name="obj"/>
<!-- test1페이지에서 넘어오는 파라메터값이 count이므로,
      여기서는 setCount메소드를 찾고 request.getParameter("count")값을 넘겨준다 -->

<h3>request Scope</h3>

<b>counter의 num값 :</b>
<jsp:getProperty property="count" name="obj" />

<jsp:forward page="result.jsp" />
<!-- <a href="result.jsp">다음페이지로</a> -->      
