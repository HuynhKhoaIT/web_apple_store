package Control;

import DAO.AnhSPDAO;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import DAO.DanhMucDAO;
import DAO.ThongSoKyThuatDAO;
import Model.AnhSanPham;
import Model.LoaiSP;
import Model.SanPham;
import Model.ThongSoKyThuatSanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailControl", value = "/ProductDetailControl")
public class ProductDetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SanPhamDAO sanPhamDAO = new SanPhamDAO();
        ThongSoKyThuatDAO tsktdao =new ThongSoKyThuatDAO();
        AnhSPDAO anhSPDAO = new AnhSPDAO();
        DanhMucDAO doanhmucDAO = new DanhMucDAO();
        LoaispDAO loaispDAO = new LoaispDAO();
        String  id_raw =   request.getParameter("maSP");
        int id = Integer.parseInt(id_raw);
        String maloai = loaispDAO.getmaloaibymasp(id_raw);
        String tenloai = loaispDAO.gettenloai(maloai);
        String tensp =sanPhamDAO.gettensp(id_raw);
        SanPham sanPham = sanPhamDAO.getProductById(id);
        List<AnhSanPham> listAnhSP= anhSPDAO.getAnhSPByID(id);

        List<LoaiSP> listlsp = loaispDAO.getAllloaisp();
        List<ThongSoKyThuatSanPham> listtskt = tsktdao.getTSKTbymaSP(id_raw);
        List<SanPham>  listsplq= sanPhamDAO.getAllsanphamtop4theodm(maloai);

        request.setAttribute("listlsp",listlsp);
        request.setAttribute("ml",maloai);
        request.setAttribute("tensp",tensp);
        request.setAttribute("tl",tenloai);
        request.setAttribute("listAnhSP",listAnhSP);
        request.setAttribute("listtskt",listtskt);
        request.setAttribute("listsplq",listsplq);
        request.setAttribute("SanPham",sanPham);
        request.getRequestDispatcher("/shop/detail_product.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
