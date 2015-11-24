/* ServletContextListener 구현하기
 * contextInitialized()
 *  - 웹 애플리케이션이 시작할 때 호출된다.
 *  - 웹 애플리케이션이 사용할 객체나 자원을 준비하는 코드를 넣는다.
 * contextDestrpyed()
 *  - 웹 애플리케이션이 종료할 때 호출된다.
 *  - 웹 애플리케이션이 사용할 객체나 자원을 해제하는 코드를 넣는다.
 */
package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContextListener01 implements ServletContextListener {

  @Override
  public void contextInitialized(ServletContextEvent sce) {
    System.out.println("ServletContextListner01.contextInitialized()");
    
  }

  @Override
  public void contextDestroyed(ServletContextEvent sce) {
    System.out.println("ServletContextListner01.contextDestroyed()");
    
  }

}
