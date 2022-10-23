package Model;

public class SPPhukien {
	private int masppk;
	private int madm;
	private String tensp;
	private String mota;
	private int giaban;
	private int giagoc;
	private int soluong;
	
	public SPPhukien() {
		// TODO Auto-generated constructor stub
	}
	
	public SPPhukien(int masppk, int madm, String tensp, String mota, int giaban, int giagoc, int soluong) {
		super();
		this.masppk = masppk;
		this.madm = madm;
		this.tensp = tensp;
		this.mota = mota;
		this.giaban = giaban;
		this.giagoc = giagoc;
		this.soluong = soluong;
	}

	public int getMasppk() {
		return masppk;
	}

	public void setMasppk(int masppk) {
		this.masppk = masppk;
	}

	public int getMadm() {
		return madm;
	}

	public void setMadm(int madm) {
		this.madm = madm;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public int getGiaban() {
		return giaban;
	}

	public void setGiaban(int giaban) {
		this.giaban = giaban;
	}

	public int getGiagoc() {
		return giagoc;
	}

	public void setGiagoc(int giagoc) {
		this.giagoc = giagoc;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	@Override
	public String toString() {
		return "SPPhukien [masppk=" + masppk + ", madm=" + madm + ", tensp=" + tensp + ", mota=" + mota + ", giaban="
				+ giaban + ", giagoc=" + giagoc + ", soluong=" + soluong + "]";
	}
	
}
