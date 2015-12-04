[주제: Spring Web MVC 프레임워크 적용]
*실습
1. Spring WebMvc 라이브러리 추가
  - build.gradle 변경
  
2. ContextLoaderListener를 스프링 클래스로 대체
  - web.xml 변경
  
3. 요청파라미터에 문자 집합을 설정하는 필터를 스프링 필터로 대체한다.
  - web.xml 변경
  
4. 프론트 컨트롤러를 스프링 클래스로 대체한다.
  - web.xml 변경
  
5. 페이지 컨트롤러를 스프링 규격에 맞추어 변경한다.
  - @RequestMapping을 스프링 에노테이션으로 대체한다.
  - @Component 대신 @Controller 에노테이션으로 대체.
  
6. 기존 에노테이션, 리스터, 필터, 서블릿 삭제

7. 스프링 프론트 컨트롤러(DispatcherServlet)을 위한 설정을 추가한다.
  - 역할 분담
  - java76/pms/application-context.xml 변경

8. 스프링 멀티파트 데이터 처리기 등록
  - dispatch-servlet.xml 파일에 멀티파트 데이터를 처리하는 객체를 등록한다.
  - 페이지 컨트롤러에서는 멀티파트 파일을 받기 위해 MultipartFile 클래스를 사용해야 한다.