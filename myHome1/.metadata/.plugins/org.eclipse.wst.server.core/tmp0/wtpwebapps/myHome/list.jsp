<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!-- list.jsp -->
<html>
<head>
	<title>�л����</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">���̵�</th>
				<th width="150">�л���</th>
				<th width="250">�б޸�</th>
			</tr>
			<!-- DB�� �ڷḦ �ҷ��ͼ� ���⿡ ��½�Ű�� -->
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













