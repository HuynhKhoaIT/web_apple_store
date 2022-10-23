package Model;

public class SPIphone {
	
	private int maspiphone;
	private int madm;
	private String tensp;
	private String mota;
	private int giaban;
	private int giagoc;
	private int soluong;
	private String manhinh;
	private String camerasau;
	private String cameratruoc;
	private String bonhotrong;
	private String hedieuhanh;
	private String cpu;
	private String xuatxu;
	private String thoigianramat;
	public SPIphone() {
		// TODO Auto-generated constructor stub
	}	
	
	public SPIphone(int maspiphone, int madm, String tensp, String mota, int giaban, int giagoc, int soluong,
			String manhinh, String camerasau, String cameratruoc, String bonhotrong, String hedieuhanh, String cpu,
			String xuatxu, String thoigianramat) {
		super();
		this.maspiphone = maspiphone;
		this.madm = madm;
		this.tensp = tensp;
		this.mota = mota;
		this.giaban = giaban;
		this.giagoc = giagoc;
		this.soluong = soluong;
		this.manhinh = manhinh;
		this.camerasau = camerasau;
		this.cameratruoc = cameratruoc;
		this.bonhotrong = bonhotrong;
		this.hedieuhanh = hedieuhanh;
		this.cpu = cpu;
		this.xuatxu = xuatxu;
		this.thoigianramat = thoigianramat;
	}

	public int getMaspiphone() {
		return maspiphone;
	}
	public void setMaspiphone(int maspiphone) {
		this.maspiphone = maspiphone;
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
	public String getCamerasau() {
		return camerasau;
	}
	public void setCamerasau(String camerasau) {
		this.camerasau = camerasau;
	}
	public String getCameratruoc() {
		return cameratruoc;
	}
	public void setCameratruoc(String cameratruoc) {
		this.cameratruoc = cameratruoc;
	}
	public String getBonhotrong() {
		return bonhotrong;
	}
	public void setBonhotrong(String bonhotrong) {
		this.bonhotrong = bonhotrong;
	}
	public String getHedieuhanh() {
		return hedieuhanh;
	}
	public void setHedieuhanh(String hedieuhanh) {
		this.hedieuhanh = hedieuhanh;
	}
	
	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
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
		return "SPIphone [maspiphone=" + maspiphone + ", madm=" + madm + ", tensp=" + tensp + ", mota=" + mota
				+ ", giaban=" + giaban + ", giagoc=" + giagoc + ", soluong=" + soluong + ", manhinh=" + manhinh
				+ ", camerasau=" + camerasau + ", cameratruoc=" + cameratruoc + ", bonhotrong=" + bonhotrong
				+ ", hedieuhanh=" + hedieuhanh + ", cpu=" + cpu + ", xuatxu=" + xuatxu + ", thoigianramat="
				+ thoigianramat + "]";
	}
}
