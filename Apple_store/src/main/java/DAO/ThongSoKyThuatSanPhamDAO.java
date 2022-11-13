package DAO;

import Model.SanPham;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import Connection.ConnectJDBC;

public class ThongSoKyThuatSanPhamDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs = null;

    public void AddThongSoKyThuatIP(SanPham sanPham,String manhinhIP,String camerasauIP,String camereselfieIP,String bonhotrongIP,String cpuIP,
                                    String hedieuhanhIP,String xuatxuIP,String thoigianramatIP){
        String query = "insert into ThongSoKyThuatSanPham values (?,8,?)\n" + // manhinh
                "insert into ThongSoKyThuatSanPham values (?,2,?);\n" + // camerasau
                "insert into ThongSoKyThuatSanPham values (?,3,?);\n" + //camselfie
                "insert into ThongSoKyThuatSanPham values (?,1,?);\n" + // bonhotrong
                "insert into ThongSoKyThuatSanPham values (?,4,?);\n" + // cpu
                "insert into ThongSoKyThuatSanPham values (?,6,?);\n" + // hedieuhanh
                "insert into ThongSoKyThuatSanPham values (?,14,?);\n" + // xuatxu
                "insert into ThongSoKyThuatSanPham values (?,11,?);\n"; // thoigianramat
        try {
            conn =new ConnectJDBC().getConnection();
            ps =conn.prepareStatement(query);

           ps.setInt(1,sanPham.getMaSP());
           ps.setString(2,manhinhIP);

           ps.setInt(3,sanPham.getMaSP());
           ps.setString(4,camerasauIP);

           ps.setInt(5,sanPham.getMaSP());
           ps.setString(6,camereselfieIP);

           ps.setInt(7,sanPham.getMaSP());
           ps.setString(8,bonhotrongIP);

           ps.setInt(9,sanPham.getMaSP());
           ps.setString(10,cpuIP);

           ps.setInt(11,sanPham.getMaSP());
           ps.setString(12,xuatxuIP);

            ps.setInt(13,sanPham.getMaSP());
            ps.setString(14,cpuIP);

            ps.setInt(15,sanPham.getMaSP());
            ps.setString(16,thoigianramatIP);

            ps.executeUpdate();
        }
        catch (Exception e) {
        }

    }
    public void AddThongSoKyThuatIPAD(SanPham sanPham,String manhinhIPAD,String camerasauIPAD,String cameraselfieIPAD,String bonhotrongIPAD,String ramIPAD,
                                    String cpuIPAD,String gpuIPAD,String hedieuhanhIPAD, String xuatxuIPAD, String thoigianramatIPAD){

    }
    public void AddThongSoKyThuatMAC(SanPham sanPham,String namhinhMAC,String cameraselfieMAC,String cpuMAC,String ramMAC,String ocungMAC,
                                    String dohoaMAC,String hedieuhanhMAC,String trongluongMAC,String xuatxuMAC,String thoigianramatMAC){

    }
    public void AddThongSoKyThuatWATCH(SanPham sanPham,String manhinhWATCH,String chatlieuWATCH,String hedieuhanhWATCH,String thoigiansudungpinWATCH,String xuatxuWATCH,
                                    String thoigianramatWATCH){

    }
}
