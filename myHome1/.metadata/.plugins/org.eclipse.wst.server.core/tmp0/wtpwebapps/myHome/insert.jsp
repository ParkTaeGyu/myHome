<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
   
<!-- insert.jsp -->
<%
		//1. �Ѿ�� ����Ÿ �ޱ�
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String cname = request.getParameter("cname");
		
		//2. ����Ÿ ��ȿ�� �˻��ϱ�
		if (id==null || id.trim().equals("") || 
				name==null || name.trim().equals("") || 
				cname==null || cname.trim().equals("")){%>
			<script type="text/javascript">
				alert("���̵�, �̸�, �б޸� ��� �Է��ϼž� �մϴ�.!!")
				history.back()
			</script>					
<%		return;
		}
		//3. ����̹� ã��
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//4. ����Ŭ�� �����ϱ�
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp01";
		String pass = "jsp01";
		Connection con = DriverManager.getConnection(url, user, pass); 
				//DriverManager.getConnection("��ġ", "���̵�", "��й�ȣ");
		//5. ������ �����Ͽ� ��� �ޱ�
		String sql = "insert into jspstudent values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, cname);
		int res = ps.executeUpdate();
		//6. ���� ����� �б��ϱ�
		if (res>0){%>
			<script type="text/javascript">
				alert("�л� ��� ����!! �л� ��� �������� �̵��մϴ�.")
				location.href="list.jsp"
			</script>	
<% 	}else {%>
			<script type="text/javascript">
				alert("�л� ��� ����!! �л� ��� �������� �̵��մϴ�.")
				location.href="student.jsp"
			</script>
<%	}%>
<!-- table
	create table jspstudent
	(id varchar2(10),
	name varchar2(15),
	cname varchar2(25));	
 -->










