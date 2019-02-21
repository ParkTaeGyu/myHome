package book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	String url, user, pass;
	
	public BookDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {
			System.err.println("오라클 드라이버 검색 실패!!");
		}
		
		url = "jdbc:oracle:thin:@localhost:1521:xe";
		user = "jsp01";
		pass = "jsp01";
	}
	
	public boolean isBookname(String bookname) throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from book where bookname=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, bookname);
			rs = ps.executeQuery();
			if (rs.next()) return true;
			return false;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int insertBook(BookDTO dto) throws SQLException {
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "insert into book values(?,?,?,?,sysdate)";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getBookname());
			ps.setString(2, dto.getWriter());
			ps.setString(3, dto.getPublisher());
			ps.setInt(4, dto.getPrice());
			return ps.executeUpdate();
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int deleteBook(String bookname) throws SQLException{
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "delete from book where bookname=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, bookname);
			return ps.executeUpdate();
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public List<BookDTO> findBook(String search, String searchString) 
																			throws SQLException {
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from book where   " + search + "=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, searchString);
			rs = ps.executeQuery();
			List<BookDTO> find = makeList(rs);
			return find;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	protected List<BookDTO> makeList(ResultSet rs) throws SQLException{
		List<BookDTO> list = new ArrayList<BookDTO>();
		while(rs.next()) {
			BookDTO dto = new BookDTO();
			dto.setBookname(rs.getString("bookname"));
			dto.setWriter(rs.getString("writer"));
			dto.setPublisher(rs.getString("publisher"));
			dto.setPrice(rs.getInt("price"));
			dto.setIndate(rs.getString("indate"));
			list.add(dto);
		}
		return list;
	}
	
	public List<BookDTO> listBook() throws SQLException {
		try {
			con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from book";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List<BookDTO> list = makeList(rs);
			return list;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
}














