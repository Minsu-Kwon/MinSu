/* 
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Servlet03Step01 extends javax.servlet.http.HttpServlet {

  private static final long serialVersionUID = 1L;

  //name을 받아와서 httpsession에 준비하고 저장하기.
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws IOException, ServletException {
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    
    //HttpSession 보관소 준비하기
    HttpSession session = request.getSession();
    
    //보관소에 데이터 저장하기
    session.setAttribute("name", name); //헤쉬맵 객체처럼 name인스턴스 값 저장

    
    response.setContentType("text/plain;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.printf("이름을 보관하였습니다");

  }
}