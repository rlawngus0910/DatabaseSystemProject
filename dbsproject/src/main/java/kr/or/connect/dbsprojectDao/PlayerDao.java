package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.*;

public class PlayerDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	public List<Player> getPlayer(String pageNumber) {
		List<Player> list = new ArrayList<>();
		Player player = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT A.playerID, A.NAME, A.NATION, A.POSITION, A.BIRTH, B.NAME, A.BACKNO, A.PHOTO FROM player AS A LEFT JOIN club AS B on A.CLUB = B.clubID WHERE playerID >= ? AND playerID <= ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,20 * (Integer.parseInt(pageNumber) - 1));
			ps.setInt(2,(20 * (Integer.parseInt(pageNumber) - 1)) + 19);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer playerID = rs.getInt(1);
				String name = rs.getString(2);
				String nation = rs.getString(3);
				String position = rs.getString(4);
				String birth = rs.getString(5);
				String club = rs.getString(6);
				Integer backno = rs.getInt(7);
				String photo = rs.getString(8);
				player = new Player(playerID, name, nation, position,birth, club, backno, photo);
				list.add(player);
				
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
	
	public boolean nextPage(String pageNumber) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM player WHERE playerID >= ? AND playerID <= ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			ps = conn.prepareStatement(sql);
			ps.setInt(1,Integer.parseInt(pageNumber)+1);
			ps.setInt(2,20 * (Integer.parseInt(pageNumber)+1) - 1);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
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
		return false;
	}
	
	public int targetPage(String pageNumber) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(*) FROM player";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) / 20;
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
		return 0;
	}
	
	public List<Player> searchList (String searchtext){
		List<Player> list = new ArrayList<>();
		Player player = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT A.playerID, A.NAME, A.NATION, A.POSITION, A.BIRTH, B.NAME, A.BACKNO, A.PHOTO FROM player AS A LEFT JOIN club AS B ON A.CLUB = B.clubID WHERE A.NAME LIKE ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			ps = conn.prepareStatement(sql);
		    ps.setString(1, "%" + searchtext + "%");
			rs = ps.executeQuery();
			while(rs.next()) {
				Integer playerID = rs.getInt(1);
				String name = rs.getString(2);
				String nation = rs.getString(3);
				String position = rs.getString(4);
				String birth = rs.getString(5);
				String club = rs.getString(6);
				Integer backno = rs.getInt(7);
				String photo = rs.getString(8);
				player = new Player(playerID, name, nation, position,birth, club, backno, photo);
				list.add(player);
				
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
