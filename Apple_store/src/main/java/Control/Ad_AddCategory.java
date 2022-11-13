
package Control;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.LoaispDAO;
import DAO.DanhMucDAO;
import DAO.SanPhamDAO;
import DAO.ThongSoKyThuatSanPhamDAO;
import Model.LoaiSP;
import Model.SanPham;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet(urlPatterns = {"/admin/add_category"})
public class Ad_AddCategory extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
        LoaispDAO loaispDAO = new LoaispDAO();
        List<LoaiSP> listlsp = loaispDAO.getAllloaisp();
        
        
        request.setAttribute("listlsp", listlsp);

		request.getRequestDispatcher("/admin/add_category.jsp").forward(request, response);

	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");

	        String maLoai = request.getParameter("maloai");
	        String tenDM = request.getParameter("tendanhmuc");
	        String tenSLug = request.getParameter("tenslug");
	        
	        DanhMucDAO danhmucDAO = new DanhMucDAO();
	        danhmucDAO.addDanhMuc(maLoai, tenDM, tenSLug);
	        
	        
	        response.sendRedirect("Ad_AddCategoryControl");

	    }
	
}
