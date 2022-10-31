package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SanPham;


public class SPMacDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SanPham> getAllmac()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM<=16 and MaDM>=14";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	
	public List<SanPham> getAllmacair()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=14";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SanPham> getAllmacpro()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=15";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SanPham> getAllimac()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=16";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
}
