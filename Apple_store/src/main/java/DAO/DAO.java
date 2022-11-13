package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Conn.ConnectJDBC;

import entity.Users;

public class DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public Users login(String username, String pass) {
		String query = "select * from UsersData\r\n"
				+ "where username = ? and pass = ? and isVerify = '1' ";
		
		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return new Users(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getInt(9),
						rs.getInt(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	public Users CheckAccountExist(String username) {
		
		String query = "select * from UsersData\r\n"
				+ "where username = ?";
		
		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return new Users(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getInt(9),
						rs.getInt(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	public Users sign(String name, String username, String email, String phone, String pass, String repass, int isVerify) {
		
		String query = "Insert into UsersData\r\n"
				+ "Values (?, ?, ?, ?, ?, ?, ?, '1', '0')";
		
		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, username);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, pass);
			ps.setString(6, repass);
			ps.setInt(7, isVerify );
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	public Users CheckIsVerifyExist(int isVerify) {

		String query = "select * from UsersData\r\n" + "where isVerify = ?";

		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, isVerify);
			rs = ps.executeQuery();

			while (rs.next()) {
				return new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}
	
	public void update(int isVerify) {
		String query = "Update UsersData\r\n"
				+ "set isVerify = '1'\r\n"
				+ "where isVerify = ?;";
		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, isVerify);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void delete(int isVerify) {
		String query = "delete from UsersData\r\n"
				+ "where isVerify = ? ;";
		try {
			conn = new ConnectJDBC().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, isVerify);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
