package Control;

import DAO.ChiTietDonHangDAO;

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import DAO.SanPhamDAO;
import Model.ChiTietDonHang;
import Model.DonHang;
import Model.SanPham;
import Model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/shipper/Ship_invoiceControl"})
public class Ship_invoiceControl extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		List<SanPham> listSP = new ArrayList<SanPham>();
		String maDH = request.getParameter("maDH");

		DonHangDAO donHangDAO = new DonHangDAO();
		DonHang donHang = donHangDAO.getDonHangByMaDH(maDH);

		KhachHangDAO khachHangDAO = new KhachHangDAO();
		Users khachHang = khachHangDAO.getKhachHangByID(Integer.toString(donHang.getMaKH()));
//
//		TaiKhoan taiKhoan = new TaiKhoan();
//		TaiKhoanDAO taiKhoanDAO=new TaiKhoanDAO();
//		taiKhoan=taiKhoanDAO.getTaiKhoanByMaTK(khachHang.getMaTK());

		ChiTietDonHangDAO dao = new ChiTietDonHangDAO();
		List<ChiTietDonHang> list = dao.getChiTietSanPhamID(Integer.parseInt(maDH));



		for (ChiTietDonHang o : list) {
			SanPhamDAO d = new SanPhamDAO();
			listSP.add(d.getProductById(o.getMaSP()));
		}


//		request.setAttribute("taikhoan", taiKhoan);
		request.setAttribute("khachHang", khachHang);
		request.setAttribute("donHang", donHang);
		request.setAttribute("size", list.size());
		request.setAttribute("listDetail", list);
		request.setAttribute("listSP", listSP);
		request.getRequestDispatcher("/Shipper/invoice.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}