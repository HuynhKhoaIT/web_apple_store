package Control;

import DAO.DanhMucDAO;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import DAO.ThongSoKyThuatSanPhamDAO;
import Model.DanhMuc;
import Model.LoaiSP;
import Model.SanPham;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

@WebServlet(name = "Ad_AddProductControl", value = "/Ad_AddProductControl")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,
        maxFileSize = 1024*1024*10,
        maxRequestSize = 1024*1024*50)
public class Ad_AddProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String maLoai = request.getParameter("maLoai");

        if(maLoai==null || maLoai.equals(""))
        {
            maLoai = "1";
        }
        LoaispDAO loaispDAO = new LoaispDAO();
        List<LoaiSP> listLoaiSP = loaispDAO.getAllloaisp();

        DanhMucDAO danhMucDAO = new DanhMucDAO();
        List<DanhMuc> listDanhMuc = danhMucDAO.getDanhMucByMaLoai(maLoai);
        request.setAttribute("maLoai",maLoai);

        request.setAttribute("listDanhMuc",listDanhMuc);
        request.setAttribute("listLoaiSP",listLoaiSP);
        request.getRequestDispatcher("/admin/add_product.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        //common
        String maDM = request.getParameter("maDM");
        String tensanpham = request.getParameter("tensanpham");
        String motasanpham = request.getParameter("motasanpham");
        String giagoc = request.getParameter("giagoc");
        String giabanthuong = request.getParameter("giabanthuong");
        String giakhuyenmai = request.getParameter("giakhuyenmai");
        String soluong = request.getParameter("soluong");

        // iphone
        String manhinhIP = request.getParameter("manhinhIP");
        String camerasauIP = request.getParameter("camerasauIP");
        String camereselfieIP = request.getParameter("camereselfieIP");
        String bonhotrongIP = request.getParameter("bonhotrongIP");
        String cpuIP = request.getParameter("cpuIP");
        String hedieuhanhIP = request.getParameter("hedieuhanhIP");
        String xuatxuIP = request.getParameter("xuatxuIP");
        String thoigianramatIP = request.getParameter("thoigianramatIP");
        //ipad
        String manhinhIPAD = request.getParameter("manhinhIPAD");
        String camerasauIPAD = request.getParameter("camerasauIPAD");
        String cameraselfieIPAD = request.getParameter("cameraselfieIPAD");
        String bonhotrongIPAD = request.getParameter("bonhotrongIPAD");
        String ramIPAD = request.getParameter("ramIPAD");
        String cpuIPAD = request.getParameter("cpuIPAD");
        String gpuIPAD = request.getParameter("gpuIPAD");
        String hedieuhanhIPAD = request.getParameter("hedieuhanhIPAD");
        String xuatxuIPAD = request.getParameter("xuatxuIPAD");
        String thoigianramatIPAD = request.getParameter("thoigianramatIPAD");
        //MAC
        String namhinhMAC = request.getParameter("namhinhMAC");
        String cameraselfieMAC = request.getParameter("cameraselfieMAC");
        String cpuMAC = request.getParameter("cpuMAC");
        String ramMAC = request.getParameter("ramMAC");
        String ocungMAC = request.getParameter("ocungMAC");
        String dohoaMAC = request.getParameter("dohoaMAC");
        String hedieuhanhMAC = request.getParameter("hedieuhanhMAC");
        String trongluongMAC = request.getParameter("trongluongMAC");
        String kichthuocMAC = request.getParameter("kichthuocMAC");
        String xuatxuMAC = request.getParameter("xuatxuMAC");
        String thoigianramatMAC = request.getParameter("thoigianramatMAC");
        //WATCH
        String manhinhWATCH = request.getParameter("manhinhWATCH");
        String chatlieuWATCH = request.getParameter("chatlieuWATCH");
        String hedieuhanhWATCH = request.getParameter("hedieuhanhWATCH");
        String thoigiansudungpinWATCH = request.getParameter("thoigiansudungpinWATCH");
        String xuatxuWATCH = request.getParameter("xuatxuWATCH");
        String thoigianramatWATCH = request.getParameter("thoigianramatWATCH");


        Part part = request.getPart("image");
        String realPath = request.getServletContext().getRealPath("/uploads");
        String filename
                = Paths.get(part.getSubmittedFileName()).getFileName().toString();

        if(!Files.exists(Paths.get(realPath))){
            Files.createDirectories(Paths.get(realPath));
        }
        part.write(realPath+"/"+filename);

        String anh = "uploads/"+filename;

//        request.setAttribute("filename","uploads/"+filename);
//
//        request.getRequestDispatcher("/test.jsp").forward(request,response);
        SanPhamDAO sanPhamDAO = new SanPhamDAO();
        sanPhamDAO.addSanPham(maDM,tensanpham,motasanpham,giagoc,giabanthuong,giakhuyenmai,soluong,anh);
        SanPham sanPham = sanPhamDAO.getNewSP();
        ThongSoKyThuatSanPhamDAO thongSoKyThuatSanPhamDAO = new ThongSoKyThuatSanPhamDAO();
        thongSoKyThuatSanPhamDAO.AddThongSoKyThuatIP(sanPham,manhinhIP,camerasauIP,camereselfieIP,bonhotrongIP,cpuIP,hedieuhanhIP,xuatxuIP,thoigianramatIP);

        response.sendRedirect("Ad_AddProductControl");

    }
}
