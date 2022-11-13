package DAO;

import Model.DanhMuc;
import Model.LoaiSP;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Connection.ConnectJDBC;

public class DanhMucDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs = null;
    public List<DanhMuc> getAllDanhMuc()
    {
        List<DanhMuc> list = new ArrayList<>();
        String query = "select * From DanhMuc";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            rs =ps.executeQuery();
            while(rs.next())
            {
                list.add(new DanhMuc(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4)));
            }
        }
        catch (Exception e) {
        }
        return list;
    }
    public List<DanhMuc> getDanhMucByMaLoai(String maLoai)
    {
        List<DanhMuc> list = new ArrayList<>();
        String query = "select * From DanhMuc where MaLoai = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,maLoai);
            rs =ps.executeQuery();
            while(rs.next())
            {
                list.add(new DanhMuc(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4)));
            }
        }
        catch (Exception e) {
        }
        return list;
    }
	public void addDanhMuc(String MaLoai, String TenDM, String DuongDan)
	{
		String query = "insert into SanPham(MaLoai,TenDM,DuongDan) Values(?,?,?);";
		try {
			conn =new ConnectJDBC().getConnection();
			ps =conn.prepareStatement(query);

			ps.setString(1,MaLoai);
			ps.setString(2,TenDM);
			ps.setString(3,DuongDan);
			

			ps.executeUpdate();
		}
		catch (Exception e) {
		}

	}
}
