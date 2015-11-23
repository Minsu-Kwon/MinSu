[주제: GenericServlet 대신 HttpServlet 클래스 사용하기]
1. 기존 서블릿들의 슈퍼 클래스를 HttpServlet으로 교체한다.
  - GET/POST 요청을 구분하여 처리한다.
    
6. 각 서블릿의
7. 클라이언트가 보낸 요청 데이터에 대해 문자 집합을 지정하는 코드를 필터에 넣기
  - CharacterEncodingFilter.java 클래스 작성
  - web.xml에 필터를 등록한다. 문자 집합 이름은 필터 초기화 파라미터로 선언
  - 이 필터 클래스에서 요청 데이터의 문자 집합을 지정하라.
  - 요청 데이터의 문자 집합을 설정하는 모든 서블릿에서 해당 코드를 제거하라!
    xxxAddServlet, xxxUpdateServlet 
    -.-; => tomcat 8에서 GET요청은 의미없음.
    		tomcat 7에서 GET요청은 server.xml에 설정한다.
    		
8. ServletContextListener를 통해 스프링 IoC 컨테이너 준비하기
  - ContextLoaderListener.jave 클래스를 작성한다.
  - 스프링 IoC 컨테이너를 준비하는 코드를 넣는다.
  - ServletContext 저장소에 스프링 IoC 컨테이너를 보관한다.
  - 우리가 만든 ContextLoader.jave 클래스를 삭제하라
  - 스프링 IoC 컨테이너를 사용하는 모든 서블릿들을 변경하라
  - web.xml에 리스너 등록하기.
  - Test Go!
   
  
  

