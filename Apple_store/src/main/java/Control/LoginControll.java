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
import entity.Users;

/**
 * Servlet implementation class LoginControll
 */
@WebServlet(name = "LoginControll", urlPatterns = "/login")
public class LoginControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter printWriter = response.getWriter();

		response.setContentType("text/html; charset=UTF-8");
		String username = request.getParameter("username-log");
		String password = request.getParameter("password-log");
		MD5 lib = new MD5();
		String passmd5 = lib.md5(password);

		DAO dao = new DAO();
		Users a = dao.login(username, passmd5);

		if (a == null) {
			request.setAttribute("mess", "wrong username or password");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			printWriter.println("Xin chao " + username);
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
