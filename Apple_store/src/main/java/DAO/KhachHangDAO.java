package DAO;

import Connection.ConnectJDBC;
import Model.KhachHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class KhachHangDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs = null;

    public List<KhachHang> getAllKhachHang()
    {
        List<KhachHang> list = new ArrayList<>();
        String query = "Select * From KhachHang";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            rs =ps.executeQuery();
            while(rs.next())
            {
                list.add(new KhachHang(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
                        rs.getDate(5),rs.getString(6),rs.getString(7)));
            }
        }
        catch (Exception e) {
        }
        return list;
    }
    public KhachHang getKhachHangByID(String id){
        String query = "Select * From KhachHang where MaKH = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,id);
            rs =ps.executeQuery();
            while(rs.next())
            {
                return new KhachHang(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
                        rs.getDate(5),rs.getString(6),rs.getString(7));
            }
        }
        catch (Exception e) {
        }
        return null;
    }
    public KhachHang getKhachHangByPhone(String sdt){
        String query = "Select * From KhachHang where SoDT = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,sdt);
            rs =ps.executeQuery();
            while(rs.next())
            {
                return new KhachHang(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
                        rs.getDate(5),rs.getString(6),rs.getString(7));
            }
        }
        catch (Exception e) {
        }
        return null;

    }
    public void addKhachHang(String tenKH, String DiaChi,String SoDT){
        String query = "INSERT INTO KhachHang (TenKH, DiaChi, SoDT)\n" +
                "VALUES (?,?,?);";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,tenKH);
            ps.setString(2,DiaChi);
            ps.setString(3,SoDT);
            ps.executeUpdate();
        }
        catch (Exception e) {
        }
    }

    
    public KhachHang getKhachHangByMaKH(int MaKH){
		String query = "Select * From KhachHang where MaKH = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setInt(1,MaKH);
            rs =ps.executeQuery();
            while(rs.next())
            {
                return new KhachHang(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
                        rs.getDate(5),rs.getString(6),rs.getString(7));
            }
        }
        catch (Exception e) {
        }
        return null;

    }
    public KhachHang getKhachHangByMaTK(int MaTK){
		String query = "Select * From KhachHang where MaTK = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setInt(1,MaTK);
            rs =ps.executeQuery();
            while(rs.next())
            {
                return new KhachHang(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
                        rs.getDate(5),rs.getString(6),rs.getString(7));
            }
        }
        catch (Exception e) {
        }
        return null;

    }
	public void UpdateCustomerInfo(int MaTK,String TenKH, String sex, String NamSinh, String DiaChi,String SoDT ) {
    	System.out.println(java.sql.Date.valueOf(NamSinh));
    	
		String querry = "update KhachHang set TenKH=?,GioiTinh=?,DiaChi=?,SoDT=? where MaTK=?";
		try {

			conn = new ConnectJDBC().getConnection();

			ps = conn.prepareStatement(querry);

			System.out.println("Thanh cong");
			ps.setString(1, TenKH);
			ps.setString(2, sex);
			ps.setString(3, DiaChi);
			ps.setString(4, SoDT);
			ps.setInt(5, MaTK);
			System.out.println("Thanh cong");
			ps.executeUpdate();
			System.out.print("Thanh cong");

		} catch (Exception e) {
		}
	}

    public static void main(String[] args) {
        KhachHangDAO khachHangDAO = new KhachHangDAO();
        List<KhachHang> listKhachHang = khachHangDAO.getAllKhachHang();
        for(KhachHang o :listKhachHang){
            System.out.println(o);
        }
        KhachHang khachHang = khachHangDAO.getKhachHangByPhone("2222222222");
        System.out.println(khachHang);
        khachHangDAO.addKhachHang("Khoa","QuanNgai","9999999999");
    }

}
