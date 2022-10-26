package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SPAppleWatchDAO;
import Model.SPAppleWatch;
@WebServlet(urlPatterns = {"/applewatch/series8"})
public class SPAppleWatchSeries8Control extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        SPAppleWatchDAO applewatchdao = new SPAppleWatchDAO();
        List<SPAppleWatch> listseries8 = applewatchdao.getAllapplewatch();
        
        
        request.setAttribute("listAppleWatch", listseries8);
        request.getRequestDispatcher("/pages/products/apple_watch.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
