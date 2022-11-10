package DAO;

import Connection.ConnectJDBC;
import Model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DonHangDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs = null;
    public void addOrder(KhachHang khachHang, Cart cart){
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String query = "Insert into DonHang(MaKH,TongTien,ThoiGian,MaTrangThai) values(?,?,?,?);";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setInt(1,khachHang.getMaKH());
            ps.setInt(2,cart.getTotalMoney());
            ps.setString(3,date);
            ps.setInt(4,1);
            ps.executeUpdate();
            // lay id order vua tao ra
            String query1 = "Select top 1 MaDH from DonHang order by MaDH desc";
            PreparedStatement ps1 = conn.prepareStatement(query1);
            ResultSet rs1 =     ps1.executeQuery();
            //add bang OrderDetail
            if(rs1.next()){
                int OrderID = rs1.getInt("MaDH");
                for ( Item i:cart.getItems() ){
                    String query2 = "Insert into ChiTietDonHang(MaDH,MaSP,SoLuong,TongTien) values(?,?,?,?);";
                    PreparedStatement ps2 = conn.prepareStatement(query2);
                    ps2.setInt(1,OrderID);
                    ps2.setInt(2,i.getProduct().getMaSP());
                    ps2.setInt(3,i.getQuantity());
                    ps2.setInt(4,(i.getQuantity()*i.getPrice()));
                    ps2.executeUpdate();
                }

            }
            // cap nhat lai so luong san pham
            String query3 = "update  SanPham set SoLuong=SoLuong-? where MaSP =?";
            PreparedStatement ps3 = conn.prepareStatement(query3);
            for(Item i:cart.getItems()){
                ps3.setInt(1,i.getQuantity());
                ps3.setInt(2,i.getProduct().getMaSP());
                ps3.executeUpdate();

            }
        }
        catch (Exception e) {
        }
    }
    public List<DonHang> getAllDonHangByMaKH(String id)
    {
        List<DonHang> list = new ArrayList<>();
        String query = "Select * From DonHang where MaKH = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,id);
            rs =ps.executeQuery();
            while(rs.next())
            {
                list.add(new DonHang(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getDate(4),
                        rs.getInt(5)));
            }
        }
        catch (Exception e) {
        }
        return list;
    }
    public DonHang getDonHangByMaDH(String id)
    {
        String query = "Select * From DonHang where MaDH = ?";
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);
            ps.setString(1,id);
            rs =ps.executeQuery();
            while(rs.next())
            {
                return new DonHang(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getDate(4), rs.getInt(5));
            }
        }
        catch (Exception e) {
        }
        return null;
    }


}
