package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChiTietDonHangDAO;
import DAO.SanPhamDAO;
import Model.ChiTietDonHang;

/**
 * Servlet implementation class AD_OrderDetail
 */
@WebServlet(name = "Ad_OrderDetailControl", value = "/Ad_OrderDetail")
public class Ad_OrderDetailControl extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		int MaDH = Integer.parseInt(request.getParameter("id"));
		List<ChiTietDonHang> list = new ArrayList<ChiTietDonHang>();
		ChiTietDonHangDAO dao = new ChiTietDonHangDAO();
		list = dao.getChiTietSanPhamID(MaDH);

		List<String> listName = new ArrayList<String>();

		for (ChiTietDonHang o : list) {
			SanPhamDAO d = new SanPhamDAO();
			listName.add(d.getProductById(o.getMaSP()).getTenSP());
		}


		request.setAttribute("size", list.size());
		request.setAttribute("listDetail", list);
		request.setAttribute("listName", listName);
		request.getRequestDispatcher("/admin/admin_OrderDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
