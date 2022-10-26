package Model;

public class DanhMuc {
	private int madm;
	private int maloai;
	private String tendm;
	
	public DanhMuc() {
		// TODO Auto-generated constructor stub
	}
	
	public DanhMuc(int madm, int maloai, String tendm) {
		super();
		this.madm = madm;
		this.maloai = maloai;
		this.tendm = tendm;
	}

	public int getMadm() {
		return madm;
	}

	public void setMadm(int madm) {
		this.madm = madm;
	}

	public int getMaloai() {
		return maloai;
	}

	public void setMaloai(int maloai) {
		this.maloai = maloai;
	}

	public String getTendm() {
		return tendm;
	}

	public void setTendm(String tendm) {
		this.tendm = tendm;
	}
	
}
