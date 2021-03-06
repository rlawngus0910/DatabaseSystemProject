package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.*;

public class CartDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	public List<Cart> getCart(String userID) {
		List<Cart> list = new ArrayList<>();
		Cart cart = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT B.cartID, A.goodsPhoto, A.goodsName, A.goodsPrice, B.amount FROM goods AS A LEFT JOIN cart AS B on A.goodsID = B.gID WHERE user = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Integer cartID = rs.getInt(1);
				String img = rs.getString(2);
				String name = rs.getString(3);
				Integer price = rs.getInt(4);
				Integer amount = rs.getInt(5);
				cart = new Cart(cartID,img, name, price, amount);
				list.add(cart);
				
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
	
	public int addCart(String userID, int goodsID) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "INSERT INTO cart(user, gID, amount) VALUES (?,?,1)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ps.setInt(2, goodsID);
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
		
		if(result > 0) return 1;
		else return -1;
	}
	
	public int plusAmount(String userID, int cartID, int amount) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "UPDATE cart SET amount = ? WHERE user = ? AND cartID = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, amount);
			ps.setString(2, userID);
			ps.setInt(3, cartID);
			
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
		
		if(result > 0) return 1;
		else return -1;
	}
	
	public int minusAmount(String userID, int cartID, int amount) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "UPDATE cart SET amount = ? WHERE user = ? AND cartID = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, amount);
			ps.setString(2, userID);
			ps.setInt(3, cartID);
			
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
		
		if(result > 0) return 1;
		else return -1;
	}
	
	public int deleteGoods(String userID, int cartID) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "DELETE FROM cart WHERE user = ? AND cartID = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ps.setInt(2, cartID);
			
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
		
		if(result > 0) return 1;
		else return -1;
	}
	
	public int deleteAllGoods(String userID) {
		int result = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "DELETE FROM cart WHERE user = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			
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
		
		if(result > 0) return 1;
		else return -1;
	}
}


