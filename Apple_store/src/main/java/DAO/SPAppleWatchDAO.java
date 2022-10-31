package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SanPham;


public class SPAppleWatchDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SanPham> getAllapplewatch()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM<=13 and MaDM>=10";
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
	public List<SanPham> getAllapplewatchseriesultra()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=10";
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
	public List<SanPham> getAllapplewatchseries8()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=11";
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
	public List<SanPham> getAllapplewatchseries7()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=12";
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

	public List<SanPham> getAllapplewatchseriesse()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=13";
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
