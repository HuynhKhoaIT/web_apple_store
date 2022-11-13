package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.LoaiSP;
import DAO.DanhMucDAO;

public class LoaispDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	public List<LoaiSP> getAllloaisp()
	{
		List<LoaiSP> list = new ArrayList<>();
		String query = "select * From LoaiSP";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new LoaiSP(rs.getInt(1),rs.getString(2)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public String getmaloai(String ml)
	{
		
		String maloai = null;
		String query = "select MaLoai From DanhMuc Where MaDM=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,ml);
				rs =ps.executeQuery();
				while(rs.next())
				{
					maloai=rs.getString(1);
				}
		}
			catch (Exception e) {
			}
		return maloai;
	}
	public String getmaloaibymasp(String masp)
	{
		
		String maloai = null;
		String query = "select MaLoai From SanPham inner join DanhMuc on SanPham.MaDM=DanhMuc.MaDM Where MaSP=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,masp);
				rs =ps.executeQuery();
				while(rs.next())
				{
					maloai=rs.getString(1);
				}
		}
			catch (Exception e) {
			}
		return maloai;
	}
	public String gettenloai(String maloai)
	{
		
		String tenloai = null;
		String query = "select TenLoai From LoaiSP Where MaLoai=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,maloai);
				rs =ps.executeQuery();
				while(rs.next())
				{
					tenloai=rs.getString(1);
				}
		}
			catch (Exception e) {
			}
		return tenloai;
	}
	public static void main(String[] args) {
		LoaispDAO iphonedao = new LoaispDAO();
        List<LoaiSP> list = iphonedao.getAllloaisp();

        for(LoaiSP o : list) {
			System.out.println(o);
		}
    }
}
