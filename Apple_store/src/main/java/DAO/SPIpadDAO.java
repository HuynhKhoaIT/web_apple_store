package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SPIpad;
import Model.SPIphone;


public class SPIpadDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SPIpad> getAllipad()
	{
		List<SPIpad> list = new ArrayList<>();
		String query = "select * From SPIpad";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIpad(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPIpad> getAllipadpro()
	{
		List<SPIpad> list = new ArrayList<>();
		String query = "select * From SPIpad Where madm=9";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIpad(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPIpad> getAllipadair()
	{
		List<SPIpad> list = new ArrayList<>();
		String query = "select * From SPIpad Where madm=10";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIpad(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPIpad> getAllipadmini()
	{
		List<SPIpad> list = new ArrayList<>();
		String query = "select * From SPIpad Where madm=11";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIpad(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public List<SPIpad> getAllipad9thgen()
	{
		List<SPIpad> list = new ArrayList<>();
		String query = "select * From SPIpad Where madm=12";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIpad(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),
							rs.getString(14),rs.getString(15),rs.getString(16)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public static void main(String[] args) {
        SPIpadDAO ipaddao = new SPIpadDAO();
        List<SPIpad> list = ipaddao.getAllipad();
        for (SPIpad o : list) {
            System.out.println(o);
        }
	
}
}