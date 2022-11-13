
package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoaispDAO;
import Model.LoaiSP;

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
	
}
