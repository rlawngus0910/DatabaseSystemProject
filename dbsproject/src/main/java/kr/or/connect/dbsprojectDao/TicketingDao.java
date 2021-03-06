package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.*;

public class TicketingDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	public int insertTicketing(int sid, String price, String member) {

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int result = 0;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "INSERT INTO ticketing(sID, price, member) VALUES(?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sid);
			ps.setString(2, price);
			ps.setString(3, member);
			result = ps.executeUpdate();
			

			
		}catch(Exception e) {
			result = -1;
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
		
		if(result >0)
			return 1;
		else return -1;
	}
	
	
	public List<Ticketing> getTicketinglist(String userID) {
		List<Ticketing> list = new ArrayList<>();
		Ticketing ticketinglist = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT B.sId, A.HOMETEAM, A.AWAYTEAM, A.DATE, A.TIME FROM schedule AS A LEFT JOIN ticketing AS B on A.scheduleID = B.sID WHERE member = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer TicketingID = rs.getInt(1);
				String hometeam = rs.getString(2);
				String awayteam = rs.getString(3);
				String date = rs.getString(4);
				String time = rs.getString(5);
				ticketinglist = new Ticketing(TicketingID, hometeam, awayteam, date, time);
				list.add(ticketinglist);
				
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
}
