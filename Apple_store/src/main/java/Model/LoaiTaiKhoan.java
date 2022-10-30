package Model;

public class LoaiTaiKhoan {
    int MaLoaiTK;
    String TenLoaiTK;

    public LoaiTaiKhoan() {
    }

    public LoaiTaiKhoan(int maLoaiTK, String tenLoaiTK) {
        MaLoaiTK = maLoaiTK;
        TenLoaiTK = tenLoaiTK;
    }

    public int getMaLoaiTK() {
        return MaLoaiTK;
    }

    public void setMaLoaiTK(int maLoaiTK) {
        MaLoaiTK = maLoaiTK;
    }

    public String getTenLoaiTK() {
        return TenLoaiTK;
    }

    public void setTenLoaiTK(String tenLoaiTK) {
        TenLoaiTK = tenLoaiTK;
    }

    @Override
    public String toString() {
        return "LoaiTaiKhoan{" +
                "MaLoaiTK=" + MaLoaiTK +
                ", TenLoaiTK='" + TenLoaiTK + '\'' +
                '}';
    }
}
