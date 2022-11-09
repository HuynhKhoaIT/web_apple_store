package Model;

public class DanhMuc {
    int MaDM;
    int MaLoai;
    String TenDM;
    String DuongDan;

    public DanhMuc() {
    }
    public DanhMuc(int maDM, int maLoai, String tenDM, String duongDan) {
        MaDM = maDM;
        MaLoai = maLoai;
        TenDM = tenDM;
        DuongDan = duongDan;
    }

    public int getMaDM() {
        return MaDM;
    }

    public void setMaDM(int maDM) {
        MaDM = maDM;
    }

    public int getMaLoai() {
        return MaLoai;
    }

    public void setMaLoai(int maLoai) {
        MaLoai = maLoai;
    }

    public String getTenDM() {
        return TenDM;
    }

    public void setTenDM(String tenDM) {
        TenDM = tenDM;
    }

    public String getDuongDan() {
        return DuongDan;
    }

    public void setDuongDan(String duongDan) {
        DuongDan = duongDan;
    }

    @Override
    public String toString() {
        return "DanhMuc{" +
                "MaDM=" + MaDM +
                ", MaLoai=" + MaLoai +
                ", TenDM='" + TenDM + '\'' +
                ", DuongDan='" + DuongDan + '\'' +
                '}';
    }
}
