package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.KhachHangDAO;
import Model.Users;

/**
 * Servlet implementation class UserPageControl
 */
@WebServlet(name = "User_PageControl", value = "/shop/UserPage") 
public class User_PageControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("acc");
		
		request.setAttribute("users", users);
		request.getRequestDispatcher("/shop/user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int MaKH = Integer.parseInt(request.getParameter("MaKH"));

		String TenKH = request.getParameter("TenKH");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String DiaChi = request.getParameter("DiaChi");

		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("acc");
		
		users.setTenKH(TenKH);
		users.setPhone(phone);
		users.setEmail(email);
		users.setDiaChi(DiaChi);

		KhachHangDAO dao = new KhachHangDAO();
		dao.UpdateCustomerInfo(MaKH, TenKH, phone, email, DiaChi);
		response.sendRedirect("UserPage");
	}

}
