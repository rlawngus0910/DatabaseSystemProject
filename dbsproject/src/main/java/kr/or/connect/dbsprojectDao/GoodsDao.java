package kr.or.connect.dbsprojectDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import kr.or.connect.dbsprojectDto.*;

public class GoodsDao {
	private static String dburl = "jdbc:mysql://ec2-15-164-94-56.ap-northeast-2.compute.amazonaws.com:3306/KJHDB";
	private static String dbUser = "Kimjuhyun";
	private static String dbpasswd = "juhyun123";
	public List<Goods> getUniform() {
		List<Goods> list = new ArrayList<>();
		Goods goods = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM goods where category = 'uniform' ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer goodsID = rs.getInt(1);
				Integer clubnumber = rs.getInt(2);
				String goodsname = rs.getString(3);
				Integer goodsprice = rs.getInt(4);
				String category = rs.getString(5);
				String goodsphoto = rs.getString(6);
				
				goods = new Goods(goodsID, clubnumber,goodsname,goodsprice,category,goodsphoto);
				list.add(goods);
				
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
	
	public List<Goods> getball() {
		List<Goods> list = new ArrayList<>();
		Goods goods = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM goods where category = 'ball' ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer goodsID = rs.getInt(1);
				Integer clubnumber = rs.getInt(2);
				String goodsname = rs.getString(3);
				Integer goodsprice = rs.getInt(4);
				String category = rs.getString(5);
				String goodsphoto = rs.getString(6);
				
				goods = new Goods(goodsID, clubnumber,goodsname,goodsprice,category,goodsphoto);
				list.add(goods);
				
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
	
	public List<Goods> getmask() {
		List<Goods> list = new ArrayList<>();
		Goods goods = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM goods where category = 'mask' ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer goodsID = rs.getInt(1);
				Integer clubnumber = rs.getInt(2);
				String goodsname = rs.getString(3);
				Integer goodsprice = rs.getInt(4);
				String category = rs.getString(5);
				String goodsphoto = rs.getString(6);
				
				goods = new Goods(goodsID, clubnumber,goodsname,goodsprice,category,goodsphoto);
				list.add(goods);
				
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
	
	public List<Goods> getmugcup() {
		List<Goods> list = new ArrayList<>();
		Goods goods = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM goods where category = 'mugcup' ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer goodsID = rs.getInt(1);
				Integer clubnumber = rs.getInt(2);
				String goodsname = rs.getString(3);
				Integer goodsprice = rs.getInt(4);
				String category = rs.getString(5);
				String goodsphoto = rs.getString(6);
				
				goods = new Goods(goodsID, clubnumber,goodsname,goodsprice,category,goodsphoto);
				list.add(goods);
				
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
	
	public List<Goods> getbag() {
		List<Goods> list = new ArrayList<>();
		Goods goods = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "SELECT * FROM goods where category = 'bag' ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Integer goodsID = rs.getInt(1);
				Integer clubnumber = rs.getInt(2);
				String goodsname = rs.getString(3);
				Integer goodsprice = rs.getInt(4);
				String category = rs.getString(5);
				String goodsphoto = rs.getString(6);
				
				goods = new Goods(goodsID, clubnumber,goodsname,goodsprice,category,goodsphoto);
				list.add(goods);
				
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
