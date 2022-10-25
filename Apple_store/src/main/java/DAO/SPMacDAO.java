package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;

import Model.SPMac;

public class SPMacDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SPMac> getAllmac()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPMac> getAllmac13()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac Where madm=13";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPMac> getAllmac14()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac Where madm=14";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPMac> getAllmac16()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac Where madm=15";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPMac> getAllimac()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac Where madm=17";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPMac> getAllmacmini()
	{
		List<SPMac> list = new ArrayList<>();
		String query = "select * From SPMac Where madm=16";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPMac(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
}
