package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SignUpDAO;
import Model.Users;

/**
 * Servlet implementation class SignUpControl
 */
@WebServlet("/shop/signup")
public class SignUpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		SignUpDAO dao = new SignUpDAO();
		Users a = dao.CheckUserExist(username);
		if(a==null) {
			dao.signup(fullname, username, email, phone, password, repassword);
			response.sendRedirect("http://localhost:8080/Apple_store");
		}
		else {
			request.setAttribute("mess", "Tài khoản đã tồn tại");
			request.getRequestDispatcher("/shop/signup.jsp").forward(request, response);
		}
	}

}
