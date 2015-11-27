package java76.pms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.StudentDao;
import java76.pms.domain.Student;

public class StudentListServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
    try {
      response.setContentType("text/html;charset=UTF-8");
      int pageNo = 1;
      int pageSize = 10;
      String keyword = "email";
      String align = "desc";

      if (request.getParameter("pageNo") != null) {
        pageNo = Integer.parseInt((String)request.getParameter("pageNo"));
      }

      if (request.getParameter("pageSize") != null) {
        pageSize = Integer.parseInt((String)request.getParameter("pageSize"));
      }

      if (request.getParameter("keyword") != null) {
        keyword = (String)request.getParameter("keyword");
      }

      if (request.getParameter("align") != null) {
        align = (String)request.getParameter("align");
      }

      ApplicationContext iocContainer = 
          (ApplicationContext)this.getServletContext()
          .getAttribute("iocContainer");
      StudentDao studentDao = iocContainer.getBean(StudentDao.class);
      
      PrintWriter out = response.getWriter();

      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<meta charset='UTF-8'>");
      out.println("<title>학생-목록</title>");
      out.println(" </head>");
      out.println("<body>");
      out.println("<h1>학생</h1>");
      
      out.println("<a href='form3.html'>새 학생</a><br>");
      
      out.println("<table border='1'>");
      out.println("<tr>");
      out.println("<th>이름</th>");
      out.println("<th>이메일</th>");
      out.println("<th>전화</th>");
      out.println("<th>학번</th>");
      out.println("</tr>");

      for (Student student : studentDao.selectList(
          pageNo, pageSize, keyword, align)) {
        
        out.println("<tr>");
        out.printf(" <td>%s</td>\n",student.getName());
        out.printf(" <td>%s</td>\n",student.getEmail());
        out.printf(" <td><a href='update?email=%s'>%s</a></td>\n",
            student.getEmail(),student.getName());
        //a태그를 적용하여 update의 GET요청으로  detail을 나타낸다.
        out.printf(" <td>%s</td>\n",student.getTel());
        out.printf(" <td>%s</td>\n",student.getCid());
        out.println(" </tr>");

      }
      out.println(" </table>");
      
      RequestDispatcher rd = request.getRequestDispatcher("/copyright");
      rd.include(request, response);
      
      out.println(" </body>");
      out.println("</html>");
      
    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      rd.forward(request, response);
    }
  }
}
