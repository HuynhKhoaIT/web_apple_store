package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO;
import Model.DanhMuc;
import Model.LoaiSP;
import Model.SanPham;

@WebServlet(urlPatterns = {"/loaisp"})
public class SanPhamControl extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String maloai=request.getParameter("maloai");
       String madm=request.getParameter("madm");
       String sort = request.getParameter("sort");
       String gia = request.getParameter("gia");
       
        SanPhamDAO sanphamdao = new SanPhamDAO();
        List<SanPham> listsp;
        List<DanhMuc> listdm;
        String ml =sanphamdao.getmaloai(madm);
        String tl ;
        if(madm==null)
        {
        	
        	listsp = sanphamdao.getAllsanphamtheodm(maloai);
        	listdm = sanphamdao.getAlldanhmuc(maloai);
        	tl =sanphamdao.gettenloai(maloai);
        }
        else
        {
        	listsp = sanphamdao.getAllsanpham(madm);
        	listdm = sanphamdao.getAlldanhmuc(ml);
        	tl =sanphamdao.gettenloai(ml);
        } 
       
        String S1="cao-den-thap";
        String S2="thap-den-cao";
        if(gia!=null && gia.equals(S1)) {
        	listsp = sanphamdao.getSortSPGiam(sort);
        	
        }
        else if(gia!=null && gia.equals(S2)) {
        	listsp = sanphamdao.getSortSPTang(sort);
        }

        request.setAttribute("listsp", listsp);
        request.setAttribute("listdm", listdm);
        request.setAttribute("ml", ml);
        request.setAttribute("tl", tl);
        request.setAttribute("mdm", madm);
        request.getRequestDispatcher("/shop/product.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
