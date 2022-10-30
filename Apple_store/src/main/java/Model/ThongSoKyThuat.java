package Model;

public class ThongSoKyThuat {
    int MaTSKT;
    String TenTSKT;

    public ThongSoKyThuat() {
    }

    public ThongSoKyThuat(int maTSKT, String tenTSKT) {
        MaTSKT = maTSKT;
        TenTSKT = tenTSKT;
    }

    public int getMaTSKT() {
        return MaTSKT;
    }

    public void setMaTSKT(int maTSKT) {
        MaTSKT = maTSKT;
    }

    public String getTenTSKT() {
        return TenTSKT;
    }

    public void setTenTSKT(String tenTSKT) {
        TenTSKT = tenTSKT;
    }

    @Override
    public String toString() {
        return "ThongSoKyThuat{" +
                "MaTSKT=" + MaTSKT +
                ", TenTSKT='" + TenTSKT + '\'' +
                '}';
    }
}
