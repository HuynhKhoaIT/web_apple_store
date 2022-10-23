package Model;

public class Loaisp {
	private int maloai;
	private String tenloai;
	
	public Loaisp() {
		// TODO Auto-generated constructor stub
	}

	public Loaisp(int maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
	}

	public int getMaloai() {
		return maloai;
	}

	public void setMaloai(int maloai) {
		this.maloai = maloai;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	

}
