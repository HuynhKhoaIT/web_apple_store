package Model;

public class ThongSoKyThuatSanPham {
    int MaSP;
    int MaTSKT;
    String Mota;

    public ThongSoKyThuatSanPham() {
    }

    public ThongSoKyThuatSanPham(int maSP, int maTSKT, String mota) {
        MaSP = maSP;
        MaTSKT = maTSKT;
        Mota = mota;
    }

    public int getMaSP() {
        return MaSP;
    }

    public void setMaSP(int maSP) {
        MaSP = maSP;
    }

    public int getMaTSKT() {
        return MaTSKT;
    }

    public void setMaTSKT(int maTSKT) {
        MaTSKT = maTSKT;
    }

    public String getMota() {
        return Mota;
    }

    public void setMota(String mota) {
        Mota = mota;
    }

    @Override
    public String toString() {
        return "ThongSoKyThuatSanPham{" +
                "MaSP=" + MaSP +
                ", MaTSKT=" + MaTSKT +
                ", Mota='" + Mota + '\'' +
                '}';
    }
}
