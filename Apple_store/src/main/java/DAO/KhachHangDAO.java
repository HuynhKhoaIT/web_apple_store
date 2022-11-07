package DAO;

import Connection.ConnectJDBC;
import Model.KhachHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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

    public static void main(String[] args) {
        KhachHangDAO khachHangDAO = new KhachHangDAO();
        List<KhachHang> listKhachHang = khachHangDAO.getAllKhachHang();
        for(KhachHang o :listKhachHang){
            System.out.println(o);
        }
    }

}
