package java76.pms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.BoardDao;
import java76.pms.domain.Board;

public class BoardUpdateServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  // GET 요청이 호출되면 - 상세 정보 출력
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
    try {
      int no = Integer.parseInt(request.getParameter("no"));
      ApplicationContext iocContainer = 
          (ApplicationContext) this.getServletContext().getAttribute("iocContainer");
      BoardDao boardDao = iocContainer.getBean(BoardDao.class);
      Board board = boardDao.selectOne(no);
      request.setAttribute("board", board);

      response.setContentType("text/html;charset=UTF-8");

      RequestDispatcher rd = request.getRequestDispatcher("/board/BoardDetail.jsp"); 
      //서블릿 URL - web.xml
      rd.include(request, response);

    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      request.setAttribute("error", e); //error 정보를 ErrorServlet에게 전달한다
      rd.forward(request, response);
    }
  }

  //POST 요청이 호출되면 - 해당 게시물 변경
  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {

    try {

      Board board = new Board();
      board.setNo(Integer.parseInt(request.getParameter("no")));
      board.setTitle(request.getParameter("title"));
      board.setContent(request.getParameter("content"));
      board.setPassword(request.getParameter("password"));


      ApplicationContext iocContainer = 
          (ApplicationContext)this.getServletContext()
          .getAttribute("iocContainer");
      BoardDao boardDao = iocContainer.getBean(BoardDao.class);

      if (boardDao.update(board) > 0) {
        response.sendRedirect("list");
        return;
      } 
      response.setContentType("text/html;charset=UTF-8");
      // 오류 코드를 ServletRequest 보관소에 담는다.
      request.setAttribute("errorCode", "401");

      RequestDispatcher rd = request.getRequestDispatcher("/board/BoardAuthError/jsp"); 
      //서블릿 URL - web.xml
      rd.include(request, response);

    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      request.setAttribute("error", e); //error 정보를 ErrorServlet에게 전달한다
      rd.forward(request, response);
    }
  }
}

