<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!-- list.jsp -->
<html>
<head>
	<title>학생목록</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>학 생 목 록 보 기</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">아이디</th>
				<th width="150">학생명</th>
				<th width="250">학급명</th>
			</tr>
			<!-- DB에 자료를 불러와서 여기에 출력시키기 -->
<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp01";
		String pass = "jsp01";
		Connection con = DriverManager.getConnection(url, user, pass); 
		String sql = "select * from jspstudent";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String id = rs.getString("id");
			String name = rs.getString("name");
			String cname = rs.getString("cname");%>
			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=cname%></td>
			</tr>	
<%	}%>			

		</table>
	</div>
</body>
</html>













