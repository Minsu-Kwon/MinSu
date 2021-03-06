/* Filter 초기화 파라미터 사용하기
 * 
 */
package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Filter05 implements Filter{
  FilterConfig config;
  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    System.out.println("Filter04.init()");
    this.config = filterConfig;
    
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    System.out.println("Filter04.doFilter()...전반 작업");
    
    // web.xml에 선언된 필터의 초기화 파라미터 값 꺼내기.
    System.out.println(config.getInitParameter("encoding"));
    System.out.println(config.getInitParameter("name"));
    
    // 컨텍스트 파라미터 값 꺼내기
    ServletContext context = request.getServletContext();
    
    System.out.println("context-param1 = " + context.getInitParameter("context-param1"));
    System.out.println("context-param2 = " + context.getInitParameter("context-param2"));
    
    chain.doFilter(request, response);
    System.out.println("Filter04.doFilter()...후반 작업");
  }

  @Override
  public void destroy() {
    System.out.println("Filter04.destroy()");
    
  }
}