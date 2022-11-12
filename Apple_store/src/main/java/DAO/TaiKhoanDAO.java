package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Connection.ConnectJDBC;
import Model.TaiKhoan;

public class TaiKhoanDAO {
	 Connection conn=null;
	    PreparedStatement ps =null;
	    ResultSet rs = null;
	    public TaiKhoan getTaiKhoanByMaTK(int MaTK){
			String query = "Select * From TaiKhoan where MaTK= ?";
	        try {
	            conn =new ConnectJDBC().getConnection();
	            ps =conn.prepareStatement(query);
	            ps.setInt(1,MaTK);
	            rs =ps.executeQuery();
	            while(rs.next())
	            {
	                return new TaiKhoan(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5));
	            }
	        }
	        catch (Exception e) {
	        }
	        return null;

	    }
	    
	    public TaiKhoan checkAccount(int id, String oldPass) {
			System.out.println(id);
			System.out.println(oldPass);
			try {
				conn = new ConnectJDBC().getConnection();

				ps = conn.prepareStatement("select * from TaiKhoan where MaTK= ? and MatKhau=?");
				ps.setInt(1, id);
				ps.setString(2, oldPass);
				rs = ps.executeQuery();

				while (rs.next()) {
					TaiKhoan a = new TaiKhoan(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5));

					return a;
				}

			} catch (Exception e) {
				System.out.println("ket noi that bai");
			}
			return null;
		}
	    
	    
	    public void ChangePassWord(int id, String newPass) {

			String querry = "update TaiKhoan set MatKhau=? where MaTK=?";
			try {

				conn = new ConnectJDBC().getConnection();

				ps = conn.prepareStatement(querry);
				ps.setString(1, newPass);
				ps.setInt(2, id);
				ps.executeUpdate();

			} catch (Exception e) {
			}
		}
}
