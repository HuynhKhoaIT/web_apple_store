package Model;

public class TaiKhoan {
	private int matk;
	private String tendn;
	private String matkhau;
	private String gmail;
	private String chucnang;
	
	public TaiKhoan() {
		// TODO Auto-generated constructor stub
	}

	public TaiKhoan(int matk, String tendn, String matkhau, String gmail, String chucnang) {
		super();
		this.matk = matk;
		this.tendn = tendn;
		this.matkhau = matkhau;
		this.gmail = gmail;
		this.chucnang = chucnang;
	}

	public int getMatk() {
		return matk;
	}

	public void setMatk(int matk) {
		this.matk = matk;
	}

	public String getTendn() {
		return tendn;
	}

	public void setTendn(String tendn) {
		this.tendn = tendn;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getChucnang() {
		return chucnang;
	}

	public void setChucnang(String chucnang) {
		this.chucnang = chucnang;
	}

	@Override
	public String toString() {
		return "TaiKhoan [matk=" + matk + ", tendn=" + tendn + ", matkhau=" + matkhau + ", gmail=" + gmail
				+ ", chucnang=" + chucnang + "]";
	}
	
}

