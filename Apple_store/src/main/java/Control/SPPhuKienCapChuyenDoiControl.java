package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPPhuKienDAO;
import Model.SPPhukien;
@WebServlet(urlPatterns = {"/phukien/capchuyendoi"})
public class SPPhuKienCapChuyenDoiControl extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPPhuKienDAO phukiendao = new SPPhuKienDAO();
        List<SPPhukien> listcapchuyendoi = phukiendao.getAllphukiencapchuyendoi();
        
        
        request.setAttribute("listPhuKien", listcapchuyendoi);
        request.getRequestDispatcher("/pages/products/phu_kien.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
