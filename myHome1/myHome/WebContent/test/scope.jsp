<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="obj" class="my.scope.Counter" scope="request" />
<jsp:setProperty property="*" name="obj"/>
<!-- test1���������� �Ѿ���� �Ķ���Ͱ��� count�̹Ƿ�,
      ���⼭�� setCount�޼ҵ带 ã�� request.getParameter("count")���� �Ѱ��ش� -->

<h3>request Scope</h3>

<b>counter�� num�� :</b>
<jsp:getProperty property="count" name="obj" />

<jsp:forward page="result.jsp" />
<!-- <a href="result.jsp">������������</a> -->      
