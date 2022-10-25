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
@WebServlet(urlPatterns = {"/ipad/ipad9thgen"})
public class SPIpad9thGenControl extends HttpServlet{
	protected void SPIpad9thGenRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPIpadDAO ipaddao = new SPIpadDAO();
        List<SPIpad> listipad9thgen = ipaddao.getAllipad9thgen();
        
        
        request.setAttribute("listIpad", listipad9thgen);
        request.getRequestDispatcher("/pages/products/ipad.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPIpad9thGenRequest(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SPIpad9thGenRequest(req, resp);
	}
}
