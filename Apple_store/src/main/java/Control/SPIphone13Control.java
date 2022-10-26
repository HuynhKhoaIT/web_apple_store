package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPIphoneDAO;
import Model.SPIphone;
@WebServlet(urlPatterns = {"/iphone/iphone13"})
public class SPIphone13Control extends HttpServlet{
	protected void iphone13Request(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPIphoneDAO iphonedao = new SPIphoneDAO();
        List<SPIphone> listiphone13 = iphonedao.getAlliphone13();
        
        
        request.setAttribute("listIphone", listiphone13);
        request.getRequestDispatcher("/pages/products/iphone.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone13Request(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone13Request(req, resp);
	}
}
