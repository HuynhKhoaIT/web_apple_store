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
 
@WebServlet(name = "Ad_AllOrder", value = "/AllOrder")
public class Ad_AllOrder extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		List<DonHang> list = new ArrayList<DonHang>();
		DonHangDAO dao=new DonHangDAO();
		list=dao.loadAllOrder();
		List<String> listName = new ArrayList<String>();
		for (DonHang o : list) {
			KhachHangDAO d = new KhachHangDAO();
			listName.add(d.getKhachHangByMaKH(o.getMaKH()).getTenKH());
		}
		request.setAttribute("size",listName.size());
		request.setAttribute("listName",listName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("/admin/admin_AllOrder.jsp").forward(request, response);
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

}
