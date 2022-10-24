package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.SPIphone;

public class SPIphoneDAO 
{
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SPIphone> getAlliphone()
	{
		List<SPIphone> list = new ArrayList<>();
		String query = "select * From SPIphone";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SPIphone(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),
							rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	public static void main(String[] args) {
        SPIphoneDAO iphonedao = new SPIphoneDAO();
        List<SPIphone> list = iphonedao.getAlliphone();
        for (SPIphone o : list) {
            System.out.println(o);
        }
    }
}
