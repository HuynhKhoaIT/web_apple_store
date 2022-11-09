package Control;

import DAO.KhachHangDAO;
import Model.KhachHang;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Ad_UserControl", value = "/Ad_UserControl")
public class Ad_UserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        KhachHangDAO khachHangDAO = new KhachHangDAO();
        List<KhachHang> listKH = khachHangDAO.getAllKhachHang();

        request.setAttribute("listKhachHang",listKH);

        request.getRequestDispatcher("/shop/user.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
