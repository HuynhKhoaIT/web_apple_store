package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import Model.DonHang;
import Model.KhachHang;

/**
 * Servlet implementation class User_OrderControl
 */
@WebServlet(name = "User_OrderControl", value = "/User_OrderControl")
public class User_OrderControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int maTK = 1;
		KhachHangDAO dao = new KhachHangDAO();
		KhachHang khachHang = new KhachHang();
		khachHang = dao.getKhachHangByMaTK(maTK);

		DonHangDAO dHangDAO = new DonHangDAO();
		List<DonHang> list = new ArrayList<DonHang>();
		list=dHangDAO.loadOrderByMaKH(khachHang.getMaKH());
		List<String> listName = new ArrayList<String>();
		for (DonHang o : list) {
			KhachHangDAO d = new KhachHangDAO();
			listName.add(d.getKhachHangByMaKH(o.getMaKH()).getTenKH());
		}
		
		
		request.setAttribute("size",listName.size());
		request.setAttribute("listName",listName);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/shop/User_Order.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
