<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!-- find.jsp -->
<html>
<head>	
	<title>학생찾기</title>
</head>
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		if (name==null || name.trim().equals("")){
			response.sendRedirect("student.jsp");
			return;
		}
%>
<body>
	<div align="center">
		<hr color="green" width="300">
			<h2><%=name%> 학 생 찾 기</h2>	
		<hr color="green" width="300">
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th width="100">아이디</th>
				<th width="150">학생명</th>
				<th width="250">학급명</th>
			</tr>
<%
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "jsp01";
			String pass = "jsp01";
			Connection con = DriverManager.getConnection(url, user, pass); 
			String sql = "select * from jspstudent where name like ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%"+name+"%");
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				//String name = rs.getString("name");
				String cname = rs.getString("cname");%>
			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=cname%></td>
			</tr>		
<%		}%>			
		</table>
	</div>
</body>
</html>










