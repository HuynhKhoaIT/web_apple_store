package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SanPham;
import Model.ThongSoKyThuat;
import Model.ThongSoKyThuatSanPham;

public class ThongSoKyThuatDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<ThongSoKyThuatSanPham> getTSKTbymaSP(String masp)
	{
		
		List<ThongSoKyThuatSanPham> list = new ArrayList<>();
		String query = "select MaSP,TenTSKT,Mota From ThongSoKyThuatSanPham inner join ThongSoKyThuat on ThongSoKyThuat.MaTSKT=ThongSoKyThuatSanPham.MaTSKT Where MaSP=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,masp);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new ThongSoKyThuatSanPham(rs.getInt(1),rs.getString(2),rs.getString(3)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}

}
