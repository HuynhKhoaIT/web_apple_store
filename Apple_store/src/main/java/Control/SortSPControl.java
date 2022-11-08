package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO;
import Model.SanPham;

@WebServlet(urlPatterns = {"/loaisp"})
public class SortSPControl extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String madm=request.getParameter("sort");
        SanPhamDAO sanphamdao = new SanPhamDAO();
        List<SanPham> list = sanphamdao.getSortSPGiam(madm);
        request.setAttribute("listsp", list);
        request.getRequestDispatcher("/pages/products/product.jsp");
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
