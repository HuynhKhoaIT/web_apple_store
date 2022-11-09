package Control;

import DAO.SanPhamDAO;
import Model.Cart;
import Model.SanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletShow", value = "/show")
public class CartControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();
        List<SanPham> list = dao.getAll();
        Cookie[] arr = request.getCookies();
        String txt="";
        if(arr!=null){
            for(Cookie o: arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                }
            }
        }
        System.out.println(txt);
        Cart cart = new Cart(txt,list);
        cart.getItems().size();
        request.setAttribute("cart",cart);
        request.getRequestDispatcher("/shop/cart.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
