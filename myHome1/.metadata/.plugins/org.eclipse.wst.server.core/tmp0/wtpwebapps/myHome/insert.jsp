<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
   
<!-- insert.jsp -->
<%
		//1. 넘어온 데이타 받기
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String cname = request.getParameter("cname");
		
		//2. 데이타 유효성 검사하기
		if (id==null || id.trim().equals("") || 
				name==null || name.trim().equals("") || 
				cname==null || cname.trim().equals("")){%>
			<script type="text/javascript">
				alert("아이디, 이름, 학급명 모두 입력하셔야 합니다.!!")
				history.back()
			</script>					
<%		return;
		}
		//3. 드라이버 찾기
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//4. 오라클과 연결하기
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp01";
		String pass = "jsp01";
		Connection con = DriverManager.getConnection(url, user, pass); 
				//DriverManager.getConnection("위치", "아이디", "비밀번호");
		//5. 쿼리를 전송하여 결과 받기
		String sql = "insert into jspstudent values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, cname);
		int res = ps.executeUpdate();
		//6. 받은 결과로 분기하기
		if (res>0){%>
			<script type="text/javascript">
				alert("학생 등록 성공!! 학생 목록 페이지로 이동합니다.")
				location.href="list.jsp"
			</script>	
<% 	}else {%>
			<script type="text/javascript">
				alert("학생 등록 실패!! 학생 등록 페이지로 이동합니다.")
				location.href="student.jsp"
			</script>
<%	}%>
<!-- table
	create table jspstudent
	(id varchar2(10),
	name varchar2(15),
	cname varchar2(25));	
 -->










