package Control;

import DAO.SanPhamDAO;
import Model.Cart;
import Model.Item;
import Model.SanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProcessServlet", value = "/process")
public class ProcessControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        SanPhamDAO dao = new SanPhamDAO();
//        List<SanPham> list = dao.getAll();
//        Cookie[] arr = request.getCookies();
//        String txt="";
//        if(arr!=null){
//            for(Cookie o: arr){
//                if(o.getName().equals("cart")){
//                    txt+=o.getValue();
//                    o.setMaxAge(0);
//                    response.addCookie(o);
//                }
//            }
//        }
//        Cart cart = new Cart(txt,list);
//        String num_raw = request.getParameter("num");
//        String  id_raw =   request.getParameter("id");
//        int id,num = 0;
//        try{
//             id = Integer.parseInt(id_raw);
//             num = Integer.parseInt(num_raw);
//             SanPham p  = dao.getProductById(id);
//             int numStore = p.getSoLuong();
//             if(num==-1 && (cart.getQuantityById(id) <= 1)){ // chi co 1 san pham trong gio hang
//                 cart.removeItem(id);
//            }else {
//                 if( num==1 && cart.getQuantityById(id)>=numStore){
//                     num = 0; // neu so luong trong kho lon hon so luong can mua khong cho tang nua
//                 }
//                 int price = p.getGiaKhuyenMai()*2;
//                 Item t = new Item(p,num,price);
//                 cart.addItem(t);
//
//             }
//        }catch ( NumberFormatException e){
//            System.out.println(e.getMessage());
//        }
//        List<Item> items = cart.getItems();
//        txt="";
//        if(items.size()>0){
//            txt=items.get(0).getProduct().getMaSP()+":"+items.get(0).getQuantity();
//            for (int i = 1 ; i<items.size();i++){
//                txt+="#"+items.get(i).getProduct().getMaSP()+":"+items.get(i).getQuantity();
//            }
//        }
//        Cookie c = new Cookie("cart",txt);
//        c.setMaxAge(2*24*60*60);
//        response.addCookie(c);
//        request.setAttribute("cart",cart);
//        request.getRequestDispatcher("/pages/cart/cart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // increase decrease
        SanPhamDAO dao = new SanPhamDAO();
        List<SanPham> list = dao.getAll();
        Cookie[] arr = request.getCookies();
        String txt="";
        if(arr!=null){
            for(Cookie o: arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        String num_raw = request.getParameter("num");
        String  id_raw = request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        int num = Integer.parseInt(num_raw);
        Cart cart = new Cart(txt,list);
        if(cart.getQuantityById(id)!=0){
            if(num == -1 || num == 1)
            {
//            Cart cart = new Cart(txt,list);
                try{
                    SanPham p  = dao.getProductById(id);
                    int numStore = p.getSoLuong();
                    if(num==-1 && (cart.getQuantityById(id) <= 1)){ // chi co 1 san pham trong gio hang
                        cart.removeItem(id);
                    }else {
                        if( num==1 && cart.getQuantityById(id)>=numStore){
                            num = 0; // neu so luong trong kho lon hon so luong can mua khong cho tang nua
                        }
                        int price = p.getGiaKhuyenMai()*2;
                        Item t = new Item(p,num,price);
                        cart.addItem(t);

                    }
                }catch ( NumberFormatException e){
                    System.out.println(e.getMessage());
                }
                List<Item> items = cart.getItems();
                txt="";
                if(items.size()>0){
                    txt=items.get(0).getProduct().getMaSP()+":"+items.get(0).getQuantity();
                    for (int i = 1 ; i<items.size();i++){
                        txt+="#"+items.get(i).getProduct().getMaSP()+":"+items.get(i).getQuantity();
                    }
                }
                Cookie c = new Cookie("cart",txt);
                c.setMaxAge(2*24*60*60);
                response.addCookie(c);
                request.setAttribute("cart",cart);
                request.getRequestDispatcher("/shop/cart.jsp").forward(request,response);
            }
            else if(num == 0)
            {
                //delete
                String [] ids = txt.split("#"); // mang nay chua cac item gom {id,soluong}{id,soluong}...
                String out="";
                for(int i = 0; i<ids.length;i++){ // neu co chua nhieu item lay tung item ra
                    String [] s = ids[i].split(":"); // chia nho ra thanh {id}{soluong}
                    if(!s[0].equals(id_raw)){ // neu nhu san pham nay khong phai san pham can xoa thi dua no vao chuoi cookie moi
                        if(out.isEmpty()){ //
                            out = ids[i]; //
                        }else {
                            out+="#"+ids[i];
                        }
                    }
                }
                if(!out.isEmpty()){
                    Cookie c = new Cookie("cart",out);
                    c.setMaxAge(2*24*60*60);
                    response.addCookie(c);
                }
//            Cart cart=new Cart(out,list);
                cart=new Cart(out,list);
                request.setAttribute("cart",cart);
                request.getRequestDispatcher("/shop/cart.jsp").forward(request,response);
            }
        }
        else
            response.sendRedirect("show");

    }
}
