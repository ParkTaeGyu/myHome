package my.student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//DAO : Data Access Object - DB의 데이타를 쓰고, 읽고, 수정하고, 삭제하는 기능
public class StudentDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	String url, user, pass;
	
	public StudentDAO() {//반드시 public default 생성자를 만들어 줘야 한다
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {
			System.err.println("오라클 드라이버 검색 실패!!");
			//System.exit(0);
		}
		
		url = "jdbc:oracle:thin:@localhost:1521:xe";
		user = "jsp01";
		pass = "jsp01";
	}
	public int insertStudent(StudentDTO dto) throws SQLException{
		return insertStudent(dto.getId(), dto.getName(), dto.getCname());
	}
		
	public int insertStudent(String id, String name, String cname)
																	throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "insert into jspstudent values(?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, cname);
			return ps.executeUpdate();
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public List<StudentDTO> listStudent() throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from jspstudent";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List<StudentDTO> list = new ArrayList<StudentDTO>();
			while(rs.next()) {
				StudentDTO dto = new StudentDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setCname(rs.getString("cname"));
				list.add(dto);
			}
			return list;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int deleteStudent(String id) throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "delete from jspstudent where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			return ps.executeUpdate();
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public List<StudentDTO> findStudent(String name) throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from jspstudent where name = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			List<StudentDTO> find = new ArrayList<StudentDTO>();
			while(rs.next()) {
				StudentDTO dto = new StudentDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setCname(rs.getString("cname"));
				find.add(dto);
			}
			return find;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
}











