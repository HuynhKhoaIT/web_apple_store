package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoaispDAO;
import DAO.DanhMucDAO;
import Model.DanhMuc;
import DAO.SanPhamDAO;
import Model.LoaiSP;
import Model.SanPham;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet(urlPatterns = {"/admin/category"})
public class Ad_CategoryControl extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String maloai=request.getParameter("maloai");
        String madm=request.getParameter("madm");

        SanPhamDAO sanphamdao = new SanPhamDAO();
        LoaispDAO loaispDAO = new LoaispDAO();
        DanhMucDAO danhmucDAO = new DanhMucDAO();
        List<LoaiSP> listlsp = loaispDAO.getAllloaisp();
        List<DanhMuc> listdm = danhmucDAO.getAlldanhmuc(maloai);
        
        request.setAttribute("listlsp", listlsp);
        request.setAttribute("listdm", listdm);

		request.getRequestDispatcher("/admin/category.jsp").forward(request, response);

	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	
}
