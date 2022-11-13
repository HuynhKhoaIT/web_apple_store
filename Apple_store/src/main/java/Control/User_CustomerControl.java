package Control;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.text.ParseException;
import java.text.SimpleDateFormat; 
import DAO.KhachHangDAO;
import Model.KhachHang;

/**
 * Servlet implementation class CustomerControl
 */
@WebServlet(name = "CustomerControl", value = "/Customer")
public class User_CustomerControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* int maTK=Integer.parseInt(request.getParameter("maTK")); */
		int maTK=1;
		KhachHangDAO dao=new KhachHangDAO();
		KhachHang khachHang=new KhachHang();
		khachHang=dao.getKhachHangByMaTK(maTK);
		request.setAttribute("kh", khachHang);
		request.getRequestDispatcher("/shop/CustomerInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int MaTK=Integer.parseInt(request.getParameter("MaTK"));
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String date=request.getParameter("date");
		String address=request.getParameter("address");
		String phoneNumber=request.getParameter("phoneNumber");
		
		KhachHangDAO dao=new KhachHangDAO();
		dao.UpdateCustomerInfo(MaTK, name, sex, date, address, phoneNumber);
		response.sendRedirect("UserPage");
		
	}

}
