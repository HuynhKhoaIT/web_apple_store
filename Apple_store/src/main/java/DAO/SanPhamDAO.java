package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectJDBC;
import Model.DanhMuc;
import Model.LoaiSP;
import Model.SanPham;

public class SanPhamDAO 
{
	Connection conn=null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	
	public List<SanPham> getAllsanpham(String madm)
	{
		
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,madm);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9)));
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
	
	public List<SanPham> getAllsanphamtheodm(String maloai)
	{
		
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham inner join DanhMuc on SanPham.MaDM=DanhMuc.MaDM Where MaLoai=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,maloai);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
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

	/*
	 * public List<LoaiSP> getAllloaisp() { List<LoaiSP> list = new ArrayList<>();
	 * String query = "select * From LoaiSP"; try { conn =new
	 * ConnectJDBC().getConnection(); ps =conn.prepareStatement(query); rs
	 * =ps.executeQuery(); while(rs.next()) { list.add(new
	 * LoaiSP(rs.getInt(1),rs.getString(2))); } } catch (Exception e) { } return
	 * list; }
	 */
	public List<SanPham> getAll()
	{
		List<SanPham> list = new ArrayList<>();

		String query = "select *from SanPham  ";
		try {
			conn =new ConnectJDBC().getConnection();
			ps =conn.prepareStatement(query);
			rs =ps.executeQuery();
			while(rs.next())
			{
				list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9)));
			}
		}
		catch (Exception e) {
		}
		return list;
	}
	public SanPham getProductById(int id){
		String query = "select *from SanPham where MaSP = ? ";
		try{
			conn =new ConnectJDBC().getConnection();
			ps =conn.prepareStatement(query);
			ps.setInt(1,id);
			rs =ps.executeQuery();
			while(rs.next())
			{
				return new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9));
			}

		}catch (Exception e){

		}
		return  null;

	}
	
//lọc sản phẩm theo giá tiền 
	public List<SanPham> getSortSPTang(String sort)
	{
		
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM = ?\r\n"
				+ "order by GiaBanThuong ASC;\r\n";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,sort);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}
	
	public List<SanPham> getSortSPGiam(String sort)
	{
		
		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM = ?\r\n"
				+ "order by GiaBanThuong desc;\r\n";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,sort);
				rs =ps.executeQuery();
				while(rs.next())
				{
					list.add(new SanPham(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getString(9)));
				}
		}
			catch (Exception e) {
			}
		return list;
	}

	
	public static void main(String[] args) {
		SanPhamDAO iphonedao = new SanPhamDAO();
        List<SanPham> list = iphonedao.getSortSPTang("1");

        for(SanPham o : list) {
			System.out.println(o);
		}
    }
}
	

