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
import Model.ChiTietDonHang;

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
	
	public String gettensp(String masp)
	{
		
		String tensp = null;
		String query = "select TensP From SanPham Where MaSP=? ";
		try {
				conn =new ConnectJDBC().getConnection();
				ps =conn.prepareStatement(query);
				ps.setString(1,masp);
				rs =ps.executeQuery();
				while(rs.next())
				{
					tensp=rs.getString(1);
				}
		}
			catch (Exception e) {
			}
		return tensp;
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
	public List<SanPham> getAllsanphamtop4theodm(String maloai)
	{
		
		List<SanPham> list = new ArrayList<>();
		String query = "select top 4 * From SanPham inner join DanhMuc on SanPham.MaDM=DanhMuc.MaDM  Where MaLoai=?  ";
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
	public List<SanPham> getSortSPTangByDM(String sort)
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
	public List<SanPham> getAllSPByDM(String sort)
	{

		List<SanPham> list = new ArrayList<>();
		String query = "select * From SanPham Where MaDM = ?";
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
	
	public List<SanPham> getSortSPGiamByDM(String sort)
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
	public List<SanPham> getSortSPTangByMaLoai(String maLoai)
	{

		List<SanPham> list = new ArrayList<>();
		String query = "SELECT SanPham.MaSP, SanPham.MaDM,SanPham.TenSP,SanPham.MoTa,SanPham.GiaGoc,SanPham.GiaBanThuong,SanPham.GiaKhuyenMai,SanPham.SoLuong,SanPham.Anh NGAY \n" +
				"FROM SanPham INNER JOIN DanhMuc ON DanhMuc.MaDM = SanPham.MaDM  where MaLoai = ? order by GiaBanThuong asc ";
		try {
			conn =new ConnectJDBC().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1,maLoai);
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

	public List<SanPham> getSortSPGiamTheoMaLoai(String maLoai)
	{


		List<SanPham> list = new ArrayList<>();
		String query = "SELECT SanPham.MaSP, SanPham.MaDM,SanPham.TenSP,SanPham.MoTa,SanPham.GiaGoc,SanPham.GiaBanThuong,SanPham.GiaKhuyenMai,SanPham.SoLuong,SanPham.Anh NGAY \n" +
				"FROM SanPham INNER JOIN DanhMuc ON DanhMuc.MaDM = SanPham.MaDM  where MaLoai = ? order by GiaBanThuong DESC ";
		try {
			conn =new ConnectJDBC().getConnection();
			ps =conn.prepareStatement(query);
			ps.setString(1,maLoai);
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
public int TotalChiPhi() {
		List<ChiTietDonHang> list = new ArrayList<ChiTietDonHang>();
		list = new ChiTietDonHangDAO().getAllChiTietDonHang();
		int total = 0;
		for (ChiTietDonHang o : list) {
			String query = "select * From SanPham where MaSP=?";

			try {
				conn = new ConnectJDBC().getConnection();
				ps = conn.prepareStatement(query);
				ps.setInt(1, o.getMaSP());
				rs = ps.executeQuery();
				while (rs.next()) {
					total = total + rs.getInt(5) * o.getSoLuong();

				}
			} catch (Exception e) {
			}
		}
		return total;
	}
}
	

