package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.*;
import java.util.Date;


public class MatchresultDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	public List<Matchresult> getMatchresult() {
		List<Matchresult> list = new ArrayList<>();
		Matchresult matchresult = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM matchresult";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer matchresultID = rs.getInt(1);
				Integer homescore = rs.getInt(2);
				Integer awayscore = rs.getInt(3);
				Integer homeclub = rs.getInt(4);
				Integer awayclub = rs.getInt(5);
				Date date = rs.getDate(6);
				
				matchresult = new Matchresult(matchresultID, homescore, awayscore, homeclub, awayclub, date);
				list.add(matchresult);
				
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
