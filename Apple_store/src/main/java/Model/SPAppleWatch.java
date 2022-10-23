package Model;

public class SPAppleWatch {
	private int maspapplewatch;
	private int madm;
	private String tensp;
	private String mota;
	private int giaban;
	private int giagoc;
	private int soluong;
	private String manhinh;
	private String chatlieu;
	private String thoigiansdpin;
	private String hedieuhanh;
	private String xuatxu;
	private String thoigianramat;
	
	public SPAppleWatch() {
		// TODO Auto-generated constructor stub
	}
	
	public SPAppleWatch(int maspapplewatch, int madm, String tensp, String mota, int giaban, int giagoc, int soluong,
			String manhinh, String chatlieu, String thoigiansdpin, String hedieuhanh, String xuatxu,
			String thoigianramat) {
		super();
		this.maspapplewatch = maspapplewatch;
		this.madm = madm;
		this.tensp = tensp;
		this.mota = mota;
		this.giaban = giaban;
		this.giagoc = giagoc;
		this.soluong = soluong;
		this.manhinh = manhinh;
		this.chatlieu = chatlieu;
		this.thoigiansdpin = thoigiansdpin;
		this.hedieuhanh = hedieuhanh;
		this.xuatxu = xuatxu;
		this.thoigianramat = thoigianramat;
	}

	public int getMaspapplewatch() {
		return maspapplewatch;
	}

	public void setMaspapplewatch(int maspapplewatch) {
		this.maspapplewatch = maspapplewatch;
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

	public String getManhinh() {
		return manhinh;
	}

	public void setManhinh(String manhinh) {
		this.manhinh = manhinh;
	}

	public String getChatlieu() {
		return chatlieu;
	}

	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}

	public String getThoigiansdpin() {
		return thoigiansdpin;
	}

	public void setThoigiansdpin(String thoigiansdpin) {
		this.thoigiansdpin = thoigiansdpin;
	}

	public String getHedieuhanh() {
		return hedieuhanh;
	}

	public void setHedieuhanh(String hedieuhanh) {
		this.hedieuhanh = hedieuhanh;
	}

	public String getXuatxu() {
		return xuatxu;
	}

	public void setXuatxu(String xuatxu) {
		this.xuatxu = xuatxu;
	}

	public String getThoigianramat() {
		return thoigianramat;
	}

	public void setThoigianramat(String thoigianramat) {
		this.thoigianramat = thoigianramat;
	}

	@Override
	public String toString() {
		return "SPAppleWatch [maspapplewatch=" + maspapplewatch + ", madm=" + madm + ", tensp=" + tensp + ", mota="
				+ mota + ", giaban=" + giaban + ", giagoc=" + giagoc + ", soluong=" + soluong + ", manhinh=" + manhinh
				+ ", chatlieu=" + chatlieu + ", thoigiansdpin=" + thoigiansdpin + ", hedieuhanh=" + hedieuhanh
				+ ", xuatxu=" + xuatxu + ", thoigianramat=" + thoigianramat + "]";
	}
	
}
