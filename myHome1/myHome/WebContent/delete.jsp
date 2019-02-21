<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%
		String id = request.getParameter("id");
		if (id==null || id.trim().equals("")){%>
			<script type="text/javascript">
				alert("아이디를 입력하셔야 삭제가 가능합니다.")
				history.back()
			</script>	
<%		return;
		}
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp01";
		String pass = "jsp01";
		Connection con = DriverManager.getConnection(url, user, pass); 
		String sql = "delete from jspstudent where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		int res = ps.executeUpdate();
		if (res>0){%>
		<script type="text/javascript">
			alert("학생 삭제 성공!! 학생 목록 페이지로 이동합니다.")
			location.href="list.jsp"
		</script>	
<% 	}else {%>
		<script type="text/javascript">
			alert("학생 삭제 실패!! 학생 삭제 페이지로 이동합니다.")
			location.href="student.jsp"
		</script>
<%	}%>













