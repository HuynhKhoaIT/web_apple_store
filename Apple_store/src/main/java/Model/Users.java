package Model;

public class Users {
	private int id;
	private String TenKH;
	private String TenTK;
	private String Email;
	private String Phone;
	private String DiaChi;
	private String MK;
	private String NNMK;
	private int IsVeify;
	private int IsUser;
	private int IsAdmin;
	private int IsShiper;
	
	public Users() {
		
	}
	
	public Users(int id, String TenKH, String TenTK, String Email, String Phone, String DiaChi, String MK, String NNMK,
			int IsVerify, int IsUser, int IsAdmin, int IsShiper) {
		this.id = id;
		this.TenKH = TenKH;
		this.TenTK = TenTK;
		this.Email = Email;
		this.Phone = Phone;
		this.DiaChi = DiaChi;
		this.MK = MK;
		this.NNMK = NNMK;
		this.IsVeify = IsVerify;
		this.IsUser = IsUser;
		this.IsAdmin = IsAdmin;
		this.IsShiper = IsShiper;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenKH() {
		return TenKH;
	}
	public void setTenKH(String tenKH) {
		TenKH = tenKH;
	}
	public String getTenTK() {
		return TenTK;
	}
	public void setTenTK(String tenTK) {
		TenTK = tenTK;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getMK() {
		return MK;
	}
	public void setMK(String mk) {
		MK = mk;
	}
	public String getNNMK() {
		return NNMK;
	}
	public void setNNMK(String nNMK) {
		NNMK = nNMK;
	}
	public int getIsVeify() {
		return IsVeify;
	}
	public void setIsVeify(int isVeify) {
		IsVeify = isVeify;
	}
	public int getIsUser() {
		return IsUser;
	}
	public void setIsUser(int isUser) {
		IsUser = isUser;
	}
	public int getIsAdmin() {
		return IsAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		IsAdmin = isAdmin;
	}
	
	public int getIsShiper() {
		return IsShiper;
	}

	public void setIsShiper(int isShiper) {
		IsShiper = isShiper;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", TenKH=" + TenKH + ", TenTK=" + TenTK + ", Email=" + Email + ", Phone=" + Phone
				+ ", DiaChi=" + DiaChi + ", MK=" + MK + ", NNMK=" + NNMK + ", IsVeify=" + IsVeify + ", IsUser=" + IsUser
				+ ", IsAdmin=" + IsAdmin + ", IsShiper=" + IsShiper + "]";
	}
	
	
}
