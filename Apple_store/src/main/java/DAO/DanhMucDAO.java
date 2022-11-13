package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.DanhMuc;
import Model.LoaiSP;

public class DanhMucDAO {
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<DanhMuc> getAlldanhmuc(String maloai)
	{
		List<DanhMuc> list = new ArrayList<>();
		String query = "select * From DanhMuc Where MaLoai=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,maloai);
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
	
	
}
