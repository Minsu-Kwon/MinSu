package java76.pms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.StudentDao;
import java76.pms.domain.Student;
import util.MultipartHelper;

public class StudentAddServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
    try {
      
      Student student = new Student();
      response.setContentType("text/html;charset=UTF-8");
      student.setName(request.getParameter("name"));
      student.setEmail(request.getParameter("email"));
      student.setTel(request.getParameter("tel"));
      student.setCid(request.getParameter("cid"));

      ApplicationContext iocContainer = 
          (ApplicationContext)this.getServletContext()
                                  .getAttribute("iocContainer");
      StudentDao studentDao = iocContainer.getBean(StudentDao.class);
      studentDao.insert(student);
      
      
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
      
//      response.sendRedirect("list");
    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      request.setAttribute("error", e);
      rd.forward(request, response);
    }
  }
}

