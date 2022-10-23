package Model;

public class ChiTietDonHang {
	private int madonhang;
	private int masp;
	private String tensp;
	private int soluong;
	private String mota;
	private int thanhtien;
	
	public ChiTietDonHang() {
		// TODO Auto-generated constructor stub
	}
	
	public ChiTietDonHang(int madonhang, int masp, String tensp, int soluong, String mota, int thanhtien) {
		super();
		this.madonhang = madonhang;
		this.masp = masp;
		this.tensp = tensp;
		this.soluong = soluong;
		this.mota = mota;
		this.thanhtien = thanhtien;
	}

	public int getMadonhang() {
		return madonhang;
	}

	public void setMadonhang(int madonhang) {
		this.madonhang = madonhang;
	}

	public int getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	@Override
	public String toString() {
		return "ChiTietDonHang [madonhang=" + madonhang + ", masp=" + masp + ", tensp=" + tensp + ", soluong=" + soluong
				+ ", mota=" + mota + ", thanhtien=" + thanhtien + "]";
	}
	
	

}
