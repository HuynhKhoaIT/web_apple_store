package Model;

public class Users {
    private int MaKH;
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

    public Users(int maKH, String tenKH, String tenTK, String email, String phone, String diaChi, String MK, String NNMK, int isVeify, int isUser, int isAdmin, int isShiper) {
        MaKH = maKH;
        TenKH = tenKH;
        TenTK = tenTK;
        Email = email;
        Phone = phone;
        DiaChi = diaChi;
        this.MK = MK;
        this.NNMK = NNMK;
        IsVeify = isVeify;
        IsUser = isUser;
        IsAdmin = isAdmin;
        IsShiper = isShiper;
    }

    public int getMaKH() {
        return MaKH;
    }

    public void setMaKH(int maKH) {
        MaKH = maKH;
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

    public void setMK(String MK) {
        this.MK = MK;
    }

    public String getNNMK() {
        return NNMK;
    }

    public void setNNMK(String NNMK) {
        this.NNMK = NNMK;
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
        return "Users{" +
                "MaKH=" + MaKH +
                ", TenKH='" + TenKH + '\'' +
                ", TenTK='" + TenTK + '\'' +
                ", Email='" + Email + '\'' +
                ", Phone='" + Phone + '\'' +
                ", DiaChi='" + DiaChi + '\'' +
                ", MK='" + MK + '\'' +
                ", NNMK='" + NNMK + '\'' +
                ", IsVeify=" + IsVeify +
                ", IsUser=" + IsUser +
                ", IsAdmin=" + IsAdmin +
                ", IsShiper=" + IsShiper +
                '}';
    }
}