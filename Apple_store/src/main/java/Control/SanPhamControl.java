package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoaispDAO;
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
        String sort_raw = request.getParameter("sort");

        int maLoaiInt = 0;
        if(maloai!=null)
        {
            maLoaiInt = Integer.parseInt(maloai);
        }
        int madmInt = 0;
        if(madm!=null)
        {
            madmInt = Integer.parseInt(madm);
        }
        int sort = 0;
        if(sort_raw!=null)
        {
            sort = Integer.parseInt(sort_raw);
        }
        SanPhamDAO sanphamdao = new SanPhamDAO();
        LoaispDAO loaispDAO = new LoaispDAO();
        List<LoaiSP> listlsp = loaispDAO.getAllloaisp();

        List<SanPham> listsp;
        List<DanhMuc> listdm;
        String ml =sanphamdao.getmaloai(madm);
        String tl ;
        if(madm==null || madmInt ==0)
        {
            if(sort == 0)
            {
                listsp = sanphamdao.getAllsanphamtheodm(maloai);
            }
            else if(sort == 1)
            {
                listsp = sanphamdao.getSortSPTangByMaLoai(maloai);
            }
            else
            {
                listsp = sanphamdao.getSortSPGiamTheoMaLoai(maloai);
            }
        	listdm = sanphamdao.getAlldanhmuc(maloai);
        	tl =sanphamdao.gettenloai(maloai);
        }
        else
        {
            if(sort == 0)
            {
                listsp = sanphamdao.getAllSPByDM(madm);
            }
            else if(sort == 1)
            {
                listsp = sanphamdao.getSortSPTangByDM(madm);
            }
            else
            {
                listsp = sanphamdao.getSortSPGiamByDM(madm);
            }
        	listdm = sanphamdao.getAlldanhmuc(ml);
        	tl =sanphamdao.gettenloai(ml);
        } 
        
//        if(sort!=null && madm==null) {
//        	listsp = sanphamdao.getSortSPTang(sort);
//        	System.out.println(listsp);
//        }
        
        System.out.println(listsp);
        request.setAttribute("maDM",madmInt);
        request.setAttribute("maLoai",maLoaiInt);
        request.setAttribute("listlsp", listlsp);
        request.setAttribute("listsp", listsp);
        request.setAttribute("listdm", listdm);
        request.setAttribute("ml", ml);
        request.setAttribute("tl", tl);
        request.getRequestDispatcher("/shop/product.jsp").forward(request, response);
        
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
}
