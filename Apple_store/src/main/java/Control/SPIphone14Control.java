package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPIphoneDAO;
import Model.SanPham;

@WebServlet(urlPatterns = {"/iphone/iphone14"})
public class SPIphone14Control extends HttpServlet{
	protected void iphone14Request(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPIphoneDAO iphonedao = new SPIphoneDAO();
        List<SanPham> listiphone = iphonedao.getAlliphone14();
        
        
        request.setAttribute("listIphone", listiphone);
        request.getRequestDispatcher("/pages/products/iphone.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone14Request(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		iphone14Request(req, resp);
	}
}
