
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
@WebServlet(name = "Ad_AddCategory", value = "/Ad_AddCategory")
public class Ad_AddCategory extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		LoaispDAO loaispDAO = new LoaispDAO();
		List<LoaiSP> listlsp = loaispDAO.getAllloaisp();


		req.setAttribute("listlsp", listlsp);

		req.getRequestDispatcher("/admin/add_category.jsp").forward(req, resp);
	}
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");

	        String maLoai = request.getParameter("maLoai");
	        String tenDM = request.getParameter("tendanhmuc");
	        String tenSLug = request.getParameter("tenslug");
	        
	        DanhMucDAO danhmucDAO = new DanhMucDAO();
	        danhmucDAO.addDanhMuc(maLoai, tenDM, tenSLug);
	        
	        
	       // response.sendRedirect("Ad_AddCategoryControl");

	    }
	
}