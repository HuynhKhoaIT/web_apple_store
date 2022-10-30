package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPMacDAO;
import Model.SPMac;
@WebServlet(urlPatterns = {"/mac/macmini"})
public class SPMacminiControl extends HttpServlet{
	protected void SPMacminiRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPMacDAO macdao = new SPMacDAO();
        List<SPMac> listmacmini = macdao.getAllmac();
        
        
        request.setAttribute("listMac", listmacmini);
        request.getRequestDispatcher("/pages/products/mac.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPMacminiRequest(req, resp);
	}
}