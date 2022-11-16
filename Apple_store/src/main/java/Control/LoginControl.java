package Control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import DAO.LoginDAO;
import Model.Users;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/shop/login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginDAO dao = new LoginDAO();
		Users a = dao.login(username, password);
		 if(a == null) {
			 request.setAttribute("mess", "Sai tên đăng nhập hoặc mật khẩu");
			 request.getRequestDispatcher("/shop/login.jsp").forward(request, response);
		 }
		 else {
			 HttpSession session = request.getSession();
			 session.setAttribute("acc", a);
			 response.sendRedirect("http://localhost:8080/Apple_store");
		 }
	}

}
