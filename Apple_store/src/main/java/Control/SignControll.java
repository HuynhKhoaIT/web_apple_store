package Controll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
import entity.MD5;
import entity.SendEmail;
import entity.Users;

/**
 * Servlet implementation class SignControll
 */
@WebServlet("/sign")
public class SignControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignControll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter printWriter = response.getWriter();
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String passwordconfirmation = request.getParameter("password-confirmation");
		
		Users ran = new Users();
		int veri = ran.getRandom();
		
		MD5 lib = new MD5();
		String passmd5 = lib.md5(password);
		String repassmd5 = lib.md5(passwordconfirmation);

		DAO dao = new DAO();
		Users a = dao.CheckAccountExist(username);
		
		if (a == null) {
			
			SendEmail sm = new SendEmail();
			
			Boolean test = sm.sendMail(email, veri, fullname);
			
			if(test = false) {
				printWriter.println("Khong the send mail");
			}
			else {
				dao.sign(fullname, username, email, phone, passmd5, repassmd5, veri);
				request.getRequestDispatcher("Verify.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("mess", "Exsit User");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
