package Control;

import DAO.BaiVietDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "Ad_TaoBaiViet", value = "/Ad_TaoBaiViet")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,
        maxFileSize = 1024*1024*10,
        maxRequestSize = 1024*1024*50)

public class Ad_AddBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("/admin/add_blog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String tieude = request.getParameter("tieude");
        String chitiet = request.getParameter("chitiet");

        Part part = request.getPart("image");
        String realPath = request.getServletContext().getRealPath("/blog");
        String filename
                = Paths.get(part.getSubmittedFileName()).getFileName().toString();

        if(!Files.exists(Paths.get(realPath))){
            Files.createDirectories(Paths.get(realPath));
        }
        part.write(realPath+"/"+filename);

        String anh = "blog/"+filename;

        BaiVietDAO baiVietDAO = new BaiVietDAO();
        baiVietDAO.addBaiViet(tieude,chitiet,anh);

        System.out.println("success");
    }
}