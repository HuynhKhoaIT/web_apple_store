package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPIpadDAO;
import Model.SPIpad;
@WebServlet(urlPatterns = {"/ipad/ipadmini"})
public class SPIpadminiControl extends HttpServlet {
	protected void SPIpadminiRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPIpadDAO ipaddao = new SPIpadDAO();
        List<SPIpad> listipadmini = ipaddao.getAllipadmini();
        
        
        request.setAttribute("listIpad", listipadmini);
        request.getRequestDispatcher("/pages/products/ipad.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPIpadminiRequest(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPIpadminiRequest(req, resp);
	}
}
