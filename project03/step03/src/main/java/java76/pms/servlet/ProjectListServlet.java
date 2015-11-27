package java76.pms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.ProjectDao;
import java76.pms.domain.Project;

public class ProjectListServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
    
    try {
      int pageNo = 1;
      int pageSize = 10;
      String keyword = "no";
      String align = "desc";

      if (request.getParameter("pageNo") != null) {
        pageNo = Integer.parseInt(request.getParameter("pageNo"));
      }

      if (request.getParameter("pageSize") != null) {
        pageSize = Integer.parseInt(request.getParameter("pageSize"));
      }

      if (request.getParameter("keyword") != null) {
        keyword = (String)request.getParameter("keyword");
      }

      if (request.getParameter("align") != null) {
        align = (String)request.getParameter("align");
      }

      ApplicationContext iocContainer = (ApplicationContext)this.getServletContext().getAttribute("iocContainer");
      ProjectDao projectDao = iocContainer.getBean(ProjectDao.class);
      response.setContentType("text/html;charset=UTF-8");

      PrintWriter out = response.getWriter();

      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<meta charset='UTF-8'>");
      out.println("<title>Project-List</title>");
      out.println(" </head>");
      out.println("<body>");
      out.println("<h1>Project</h1>");
      
      out.println("<a href='form2.html'>새 프로젝트</a><br>");
      
      out.println("<table border='1'>");
      out.println("<tr>");
      out.println("<th>번호</th>");
      out.println("<th>제목</th>");
      out.println("<th>시작일</th>");
      out.println("<th>종료일</th>");
      out.println("<th>멤버</th>");
      out.println("</tr>");
/*             project.getNo(), 
            project.getTitle(),
            project.getStartDate(),
            project.getEndDate(),
            project.getMember());
 */
      for (Project project : projectDao.selectList(
          pageNo, pageSize, keyword, align)) {
        // 반복문이 돌아가며 빈 <tr> 태그 내부에 출력해준다.
        out.println("<tr>");
        out.printf(" <td>%s</td>\n",project.getNo());
        out.printf(" <td><a href='update?no=%d'>%s</a></td>\n",
            project.getNo(),project.getTitle());
        //a태그를 적용하여 update의 GET요청으로  detail을 나타낸다.
        out.printf(" <td>%s</td>\n",project.getStartDate());        
        out.printf(" <td>%s</td>\n",project.getEndDate());
        out.printf(" <td>%s</td>\n",project.getMember());
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
