package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import DAO.SignUpDAO;
import Model.Users;

/**
 * Servlet implementation class VerifyControl
 */
@WebServlet("/shop/verify")
public class VerifyControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/shop/verify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String veri = request.getParameter("verify");
		int verify = Integer.parseInt(veri);
		
		HttpSession session = request.getSession();
		int i = (int)session.getAttribute("verify");
		if(verify == i) {
			SignUpDAO dao = new SignUpDAO();
			String fullname = session.getAttribute("fullname").toString();
			String username = session.getAttribute("username").toString();
			String email = session.getAttribute("email").toString();
			String phone = session.getAttribute("phone").toString();
			String pass = session.getAttribute("password").toString();
			String repass = session.getAttribute("repassword").toString();
			
			dao.signup(fullname, username, email, phone, pass, repass);
			response.sendRedirect("http://localhost:8080/Apple_store");
		}
		else {
			request.setAttribute("mess", "Sai mã xác nhận");
			request.getRequestDispatcher("/shop/verify.jsp").forward(request, response);
		}
	}

}
