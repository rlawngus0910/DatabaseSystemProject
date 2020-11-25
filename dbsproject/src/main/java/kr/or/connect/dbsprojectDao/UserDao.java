package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.User;

public class UserDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB?useUnicode=true&characterEncoding=utf8";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<User> getUser() {
		List<User> list = new ArrayList<>();
		User user = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT ID FROM user";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String Id = rs.getString(1);
				user = new User(Id);
				list.add(user);
				System.out.println("?");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(ps!=null) {
				try {
					ps.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return list;
	}
	
	public int login(String userID, String userPassword) {
		int result = -1;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT PW FROM user WHERE ID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).contentEquals(userPassword))
					result = 1;  // 로그인 성공
				else
					result = 0; // 비밀번호 불일치
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(SQLException e) {
					result = -2;
					e.printStackTrace();
				}
			}
			if(ps!=null) {
				try {
					ps.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public int join(User user) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "INSERT INTO user VALUES (?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getID());
			ps.setString(2, user.getPW());
			ps.setString(3, user.getNAME());
			ps.setString(4, user.getEMAIL());
			ps.setString(5, user.getBIRTH());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(ps!=null) {
				try {
					ps.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		if(result > 0) return 1;
		else return -1;
	}
	
}
