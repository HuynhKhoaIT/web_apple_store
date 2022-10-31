package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SanPham;


public class SPPhuKienDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SanPham> getAllphukien()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM<=20 and MaDM>=17";
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
	public List<SanPham> getAllphukienoplung()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=17";
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
	public List<SanPham> getAllphukientainghe()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=18";
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
	public List<SanPham> getAllphukiencapchuyendoi()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=19";
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
	public List<SanPham> getAllphukienchuot()
	{
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where madm=20";
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
		SPPhuKienDAO ipaddao = new SPPhuKienDAO();
        List<SanPham> list = ipaddao.getAllphukien();
        for (SanPham o : list) {
            System.out.println(o);
        }
	}

}
