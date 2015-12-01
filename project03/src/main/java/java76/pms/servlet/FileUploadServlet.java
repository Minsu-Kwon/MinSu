package java76.pms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MultipartHelper;
/*파일 업로드-멀티파트 데이터처리*/
@WebServlet("/file/upload")
public class FileUploadServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      Map<String,String> paramMap = MultipartHelper.parseMultipartData(
          request, 
          this.getServletContext().getRealPath("/file"));
     
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.println("<html><body>");
      out.println("이름 = \n"+ paramMap.get("name"));
      out.println("사진 = \n"+ paramMap.get("photo"));
      out.printf("<img src='%s'><br>\n",paramMap.get("photo"));
      out.println("</html></body>");
      
    } catch (Exception e) {
      throw new ServletException(e);
    }
  }
}








