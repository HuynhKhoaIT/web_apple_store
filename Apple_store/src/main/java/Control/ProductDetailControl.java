package Control;

import DAO.AnhSPDAO;
import DAO.SanPhamDAO;
import Model.AnhSanPham;
import Model.SanPham;

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
        AnhSPDAO anhSPDAO = new AnhSPDAO();
        String  id_raw =   request.getParameter("maSP");
        int id = Integer.parseInt(id_raw);
        SanPham sanPham = sanPhamDAO.getProductById(id);
        List<AnhSanPham> listAnhSP= anhSPDAO.getAnhSPByID(id);
        request.setAttribute("listAnhSP",listAnhSP);
        request.setAttribute("SanPham",sanPham);
        request.getRequestDispatcher("/pages/detail_product/detail_product.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}