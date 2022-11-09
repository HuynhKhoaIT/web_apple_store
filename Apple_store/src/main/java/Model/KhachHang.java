package Model;

import java.util.Date;

public class KhachHang {
    int MaKH;
    int MaTK;
    String TenKH;
    String GioiTinh;
    Date NamSinh;
    String DiaChi;
    String SoDT;

    public KhachHang() {
    }

    public KhachHang(String tenKH,String diaChi, String soDT) {
        TenKH = tenKH;
        DiaChi = diaChi;
        SoDT = soDT;
    }

    public KhachHang(int maKH, int maTK, String tenKH, String gioiTinh, Date namSinh, String diaChi, String soDT) {
        MaKH = maKH;
        MaTK = maTK;
        TenKH = tenKH;
        GioiTinh = gioiTinh;
        NamSinh = namSinh;
        DiaChi = diaChi;
        SoDT = soDT;
    }

    public int getMaKH() {
        return MaKH;
    }

    public void setMaKH(int maKH) {
        MaKH = maKH;
    }

    public int getMaTK() {
        return MaTK;
    }

    public void setMaTK(int maTK) {
        MaTK = maTK;
    }

    public String getTenKH() {
        return TenKH;
    }

    public void setTenKH(String tenKH) {
        TenKH = tenKH;
    }

    public String getGioiTinh() {
        return GioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        GioiTinh = gioiTinh;
    }

    public Date getNamSinh() {
        return NamSinh;
    }

    public void setNamSinh(Date namSinh) {
        NamSinh = namSinh;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String diaChi) {
        DiaChi = diaChi;
    }

    public String getSoDT() {
        return SoDT;
    }

    public void setSoDT(String soDT) {
        SoDT = soDT;
    }

    @Override
    public String toString() {
        return "KhachHang{" +
                "MaKH=" + MaKH +
                ", MaTK=" + MaTK +
                ", TenKH='" + TenKH + '\'' +
                ", GioiTinh='" + GioiTinh + '\'' +
                ", NamSinh=" + NamSinh +
                ", DiaChi='" + DiaChi + '\'' +
                ", SoDT='" + SoDT + '\'' +
                '}';
    }
}
