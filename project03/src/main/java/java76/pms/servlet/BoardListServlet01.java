package java76.pms.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.BoardDao;
import java76.pms.domain.Board;

public class BoardListServlet01 extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(
      HttpServletRequest request, HttpServletResponse response) 
          throws ServletException, IOException {

    try {
      response.setContentType("text/html;charset=UTF-8");
      // plain -> html 변경 이유? 렌더러를 사용하여 출력하라
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
        keyword = request.getParameter("keyword");
      }

      if (request.getParameter("align") != null) {
        align = request.getParameter("align");
      }

      ApplicationContext iocContainer = (ApplicationContext) 
          this.getServletContext().getAttribute("iocContainer");
      BoardDao boardDao = iocContainer.getBean(BoardDao.class);

      //Dao로부터 데이터를 받는다.
      List<Board> boards = boardDao.selectList(pageNo, pageSize, keyword, align);

      // Dao로부터 받은 데이터를 ServletRequest보관소에 저장한다.
      request.setAttribute("boards", boards);

      //JSP에게 출력을 위임한다.
      //include를 할 경우, 응답 데이터의 콘텐츠 타입을 그 전에 미리 설정해야 한다.
      response.setContentType("text/html;charset=UTF-8");
      RequestDispatcher rd = request.getRequestDispatcher("/board/BoardList.jsp");
      rd.include(request, response);

    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      rd.forward(request, response);
    }
  }

}
