//package Control;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import DAO.KhachHangDAO;
//import DAO.TaiKhoanDAO;
//
//@WebServlet(name = "AccountControl", value = "/Account")
//public class User_AccountControl extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int maTK=1;
//		TaiKhoanDAO dao=new TaiKhoanDAO();
////		acc=dao.getTaiKhoanByMaTK(maTK);
////		request.setAttribute("kh", acc);
//		request.getRequestDispatcher("/shop/User_AccountInfo.jsp").forward(request, response);
//	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		int maTK=Integer.parseInt(request.getParameter("maTK"));
//		String oldPass=request.getParameter("oldPass");
//		String newPass=request.getParameter("newPass");
//		TaiKhoanDAO dao=new TaiKhoanDAO();
////		TaiKhoan tKhoan=new TaiKhoan();
////		tKhoan=dao.checkAccount(maTK, oldPass);
//		if(tKhoan!=null)
//		{
//			dao.ChangePassWord(maTK,newPass);
//			response.sendRedirect("UserPage");
//		}
//
//	}
//
//}
