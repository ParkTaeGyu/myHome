<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="obj" class="my.scope.Counter" scope="request"/>

<h2>result.jsp������</h2>

<b>counter�� num�� :</b>
<jsp:getProperty property="count" name="obj" />

<a href="test1.html">ó������</a>