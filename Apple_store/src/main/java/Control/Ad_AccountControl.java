package Control;

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import Model.DonHang;
import Model.KhachHang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Ad_AccountControl", value = "/Ad_AccountControl")
public class Ad_AccountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String maKH = request.getParameter("maKH");

        KhachHangDAO khachHangDAO = new KhachHangDAO();

        KhachHang khachHang = khachHangDAO.getKhachHangByID(maKH);

        DonHangDAO donHangDAO = new DonHangDAO();
        List<DonHang> listDonHang = donHangDAO.getAllDonHangByMaKH(maKH);


        request.setAttribute("listDonHang",listDonHang);
        request.setAttribute("khachHang",khachHang);
        request.getRequestDispatcher("/admin/account.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}