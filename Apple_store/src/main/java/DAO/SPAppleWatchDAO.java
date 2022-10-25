package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SPAppleWatch;

public class SPAppleWatchDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SPAppleWatch> getAllapplewatch()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPAppleWatch> getAllapplewatchseriesultra()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch Where madm=18";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPAppleWatch> getAllapplewatchseries8()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch Where madm=19";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPAppleWatch> getAllapplewatchseries7()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch Where madm=20";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPAppleWatch> getAllapplewatchseries3()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch Where madm=21";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPAppleWatch> getAllapplewatchseriesse()
	{
		List<SPAppleWatch> list = new ArrayList<>();
		String query = "select * From SPAppleWatch Where madm=22";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPAppleWatch(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
}
