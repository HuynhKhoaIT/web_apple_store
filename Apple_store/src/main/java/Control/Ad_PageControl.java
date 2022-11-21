package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChiTietDonHangDAO;
import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import DAO.SanPhamDAO;
import Model.ChiTietDonHang;
import Model.DonHang;
import Model.SanPham;

@WebServlet(name = "Ad_PageControl", value = "/admin")
public class Ad_PageControl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		
		HttpSession session = request.getSession();
		if (session.getAttribute("acc") == null) {
			response.sendRedirect("http://localhost:8080/Apple_store/shop/loginad");
		}
		else if (Integer.parseInt(session.getAttribute("rolead").toString()) == 0){
			session.removeAttribute("acc");
			session.removeAttribute("rolead");
			session.removeAttribute("roleshipper");
			response.sendRedirect("http://localhost:8080/Apple_store/shop/loginad");
		}
		else {
			List<DonHang> list = new ArrayList<DonHang>();
			DonHangDAO dao=new DonHangDAO();
			list=dao.loadTop10Order();
			System.out.print(list.size());

			List<String> listName = new ArrayList<String>();
			for (DonHang o : list) {
				KhachHangDAO d = new KhachHangDAO();
				listName.add(d.getKhachHangByMaKH(o.getMaKH()).getTenKH());
			}
			List<ChiTietDonHang> chititet = new ArrayList<ChiTietDonHang>();
			int totalChiPhi=0;
			for (DonHang o : list) {

				ChiTietDonHangDAO d=new ChiTietDonHangDAO();
				chititet=d.getChiTietSanPhamID(o.getMaDH());
				for(ChiTietDonHang i:chititet)
				{
					SanPham SP=new SanPham();
					SanPhamDAO a=new SanPhamDAO();
					SP=a.getProductById(i.getMaSP());
					totalChiPhi=totalChiPhi+i.getSoLuong()*SP.getGiaGoc();
				}
			}
			int total=new DonHangDAO().totalPriceAllOrder();


			request.setAttribute("totalChiPhi",totalChiPhi);
			request.setAttribute("total",total);
			request.setAttribute("size",listName.size());
			request.setAttribute("listName",listName);
			request.setAttribute("list",list);
			request.getRequestDispatcher("/admin/admin.jsp").forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}