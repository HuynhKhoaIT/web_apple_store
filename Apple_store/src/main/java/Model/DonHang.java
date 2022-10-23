package Model;

public class DonHang {
	private int madonhang;
	private int makh;
	private int tongtien;
	private String thoigian;
	private String tinhtrang;
	
	public DonHang() {
		// TODO Auto-generated constructor stub
	}
	
	public DonHang(int madonhang, int makh, int tongtien, String thoigian, String tinhtrang) {
		super();
		this.madonhang = madonhang;
		this.makh = makh;
		this.tongtien = tongtien;
		this.thoigian = thoigian;
		this.tinhtrang = tinhtrang;
	}

	public int getMadonhang() {
		return madonhang;
	}

	public void setMadonhang(int madonhang) {
		this.madonhang = madonhang;
	}

	public int getMakh() {
		return makh;
	}

	public void setMakh(int makh) {
		this.makh = makh;
	}

	public int getTongtien() {
		return tongtien;
	}

	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}

	public String getThoigian() {
		return thoigian;
	}

	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}

	public String getTinhtrang() {
		return tinhtrang;
	}

	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}

	@Override
	public String toString() {
		return "DonHang [madonhang=" + madonhang + ", makh=" + makh + ", tongtien=" + tongtien + ", thoigian="
				+ thoigian + ", tinhtrang=" + tinhtrang + "]";
	}
	

}
