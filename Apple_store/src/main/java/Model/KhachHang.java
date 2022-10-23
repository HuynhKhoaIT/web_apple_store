package Model;

public class KhachHang {
	private int makh;
	private int matk;
	private String hoten;
	private String gioitinh;
	private String namsinh;
	private String diachi;
	private String sdt;
	
	public KhachHang() {
		// TODO Auto-generated constructor stub
	}

	public KhachHang(int makh, int matk, String hoten, String gioitinh, String namsinh, String diachi, String sdt) {
		super();
		this.makh = makh;
		this.matk = matk;
		this.hoten = hoten;
		this.gioitinh = gioitinh;
		this.namsinh = namsinh;
		this.diachi = diachi;
		this.sdt = sdt;
	}

	public int getMakh() {
		return makh;
	}

	public void setMakh(int makh) {
		this.makh = makh;
	}

	public int getMatk() {
		return matk;
	}

	public void setMatk(int matk) {
		this.matk = matk;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getNamsinh() {
		return namsinh;
	}

	public void setNamsinh(String namsinh) {
		this.namsinh = namsinh;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	@Override
	public String toString() {
		return "KhachHang [makh=" + makh + ", matk=" + matk + ", hoten=" + hoten + ", gioitinh=" + gioitinh
				+ ", namsinh=" + namsinh + ", diachi=" + diachi + ", sdt=" + sdt + "]";
	}
	

}
