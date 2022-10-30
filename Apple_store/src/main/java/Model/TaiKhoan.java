package Model;

public class TaiKhoan {
    int MaTK;
    int MaLoaiTK;
    String TenDN;
    String MatKhau;
    String Gmail;

    public TaiKhoan() {
    }

    public TaiKhoan(int maTK, int maLoaiTK, String tenDN, String matKhau, String gmail) {
        MaTK = maTK;
        MaLoaiTK = maLoaiTK;
        TenDN = tenDN;
        MatKhau = matKhau;
        Gmail = gmail;
    }

    public int getMaTK() {
        return MaTK;
    }

    public void setMaTK(int maTK) {
        MaTK = maTK;
    }

    public int getMaLoaiTK() {
        return MaLoaiTK;
    }

    public void setMaLoaiTK(int maLoaiTK) {
        MaLoaiTK = maLoaiTK;
    }

    public String getTenDN() {
        return TenDN;
    }

    public void setTenDN(String tenDN) {
        TenDN = tenDN;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String matKhau) {
        MatKhau = matKhau;
    }

    public String getGmail() {
        return Gmail;
    }

    public void setGmail(String gmail) {
        Gmail = gmail;
    }

    @Override
    public String toString() {
        return "TaiKhoan{" +
                "MaTK=" + MaTK +
                ", MaLoaiTK=" + MaLoaiTK +
                ", TenDN='" + TenDN + '\'' +
                ", MatKhau='" + MatKhau + '\'' +
                ", Gmail='" + Gmail + '\'' +
                '}';
    }
}
