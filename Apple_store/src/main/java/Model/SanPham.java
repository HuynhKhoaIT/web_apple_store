package Model;

public class SanPham {
    int MaSP;
    int MaDM;
    String TenSP;
    String MoTa;
    int GiaGoc;
    int GiaBanThuong;
    int GiaKhuyenMai;
    int SoLuong;

    public SanPham() {
    }

    public SanPham(int maSP, int maDM, String tenSP, String moTa, int giaGoc, int giaBanThuong, int giaKhuyenMai, int soLuong) {
        MaSP = maSP;
        MaDM = maDM;
        TenSP = tenSP;
        MoTa = moTa;
        GiaGoc = giaGoc;
        GiaBanThuong = giaBanThuong;
        GiaKhuyenMai = giaKhuyenMai;
        SoLuong = soLuong;
    }

    public int getMaSP() {
        return MaSP;
    }

    public void setMaSP(int maSP) {
        MaSP = maSP;
    }

    public int getMaDM() {
        return MaDM;
    }

    public void setMaDM(int maDM) {
        MaDM = maDM;
    }

    public String getTenSP() {
        return TenSP;
    }

    public void setTenSP(String tenSP) {
        TenSP = tenSP;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String moTa) {
        MoTa = moTa;
    }

    public int getGiaGoc() {
        return GiaGoc;
    }

    public void setGiaGoc(int giaGoc) {
        GiaGoc = giaGoc;
    }

    public int getGiaBanThuong() {
        return GiaBanThuong;
    }

    public void setGiaBanThuong(int giaBanThuong) {
        GiaBanThuong = giaBanThuong;
    }

    public int getGiaKhuyenMai() {
        return GiaKhuyenMai;
    }

    public void setGiaKhuyenMai(int giaKhuyenMai) {
        GiaKhuyenMai = giaKhuyenMai;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(int soLuong) {
        SoLuong = soLuong;
    }
    

    @Override
    public String toString() {
        return "SanPham{" +
                "MaSP=" + MaSP +
                ", MaDM=" + MaDM +
                ", TenSP='" + TenSP + '\'' +
                ", MoTa='" + MoTa + '\'' +
                ", GiaGoc=" + GiaGoc +
                ", GiaBanThuong=" + GiaBanThuong +
                ", GiaKhuyenMai=" + GiaKhuyenMai +
                ", SoLuong=" + SoLuong +
                '}';
    }
//    public static void main(String[] args) {
//		SanPham sp= new SanPham();
//		System.out.println(sp.toString());
//        }
}
