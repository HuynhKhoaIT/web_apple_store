package Control;

import DAO.DonHangDAO;
import DAO.ItemDAO;
import DAO.KhachHangDAO;
import Model.DonHang;
import Model.Item;
import Model.KhachHang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Ad_invoiceControl", value = "/Ad_invoiceControl")
public class Ad_InvoiceControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String maDH = request.getParameter("maDH");

        DonHangDAO donHangDAO = new DonHangDAO();
        DonHang donHang = donHangDAO.getDonHangByMaDH(maDH);


        KhachHangDAO khachHangDAO = new KhachHangDAO();
        KhachHang khachHang = khachHangDAO.getKhachHangByID(Integer.toString(donHang.getMaKH()));

        ItemDAO itemDAO = new ItemDAO();
        List<Item> listItem = itemDAO.getAllItemByMaDH(maDH);

        request.setAttribute("listItem",listItem);

        request.setAttribute("khachHang",khachHang);
        request.setAttribute("donHang",donHang);


        request.getRequestDispatcher("/admin/invoice.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
