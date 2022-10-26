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
@WebServlet(urlPatterns = {"/iphone/iphone11"})
public class SPIphone11Control extends HttpServlet{
	protected void iphone11Request(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPIphoneDAO iphonedao = new SPIphoneDAO();
        List<SPIphone> listiphone11 = iphonedao.getAlliphone11();
        
        
        request.setAttribute("listIphone", listiphone11);
        request.getRequestDispatcher("/pages/products/iphone.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone11Request(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone11Request(req, resp);
	}
}
