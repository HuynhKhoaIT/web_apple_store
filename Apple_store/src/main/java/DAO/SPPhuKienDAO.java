package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SPPhukien;

public class SPPhuKienDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SPPhukien> getAllphukien()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPPhukien> getAllphukienoplung()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien Where madm=23";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPPhukien> getAllphukientainghe()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien Where madm=24";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPPhukien> getAllphukiencapchuyendoi()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien Where madm=25";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPPhukien> getAllphukienchuot()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien Where madm=26";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPPhukien> getAllphukiensacduphong()
	{
		List<SPPhukien> list = new ArrayList<>();
		String query = "select * From SPPhuKien Where madm=27";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPPhukien(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
}
