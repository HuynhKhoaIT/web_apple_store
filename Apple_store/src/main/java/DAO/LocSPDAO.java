package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SanPham;

public class SPIphoneDAO 
{
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SanPham> getAlliphone()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM<=5 and MaDM>=1";
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
	public List<SanPham> getAlliphone14()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=1";
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
	public List<SanPham> getAlliphone13()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=2";
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
	public List<SanPham> getAlliphone12()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=3";
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
	public List<SanPham> getAlliphone11()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=4";
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
	public List<SanPham> getAlliphoneSE()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=5";
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
	public List<SanPham> getAlliphone8()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=8";
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
	public static void main(String[] args) {
        SPIphoneDAO iphonedao = new SPIphoneDAO();
        List<SanPham> list = iphonedao.getAlliphone();
        for (SanPham o : list) {
            System.out.println(o);
        }
    }
}
