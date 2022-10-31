package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPMacDAO;
import Model.SanPham;
@WebServlet(urlPatterns = {"/mac/imac"})
public class SPiMacControl extends HttpServlet{
	protected void SPMaciMacRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPMacDAO macdao = new SPMacDAO();
        List<SanPham> listmacimac = macdao.getAllimac();
        
        
        request.setAttribute("listMac", listmacimac);
        request.getRequestDispatcher("/pages/products/mac.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPMaciMacRequest(req, resp);
	}
}
