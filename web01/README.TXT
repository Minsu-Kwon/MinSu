[주제: JSP 사용법 ]
 1. Template Date와 서블릿 클래스
  - JSP엔진은 .jsp 파일을 통해 서블릿 클래스를 자동 생성한다.
  - 자동 생성된 코드는 어디?
    => 톰캣 임시 작업 폴더/work/디렉토리아래 있다. 확인할 것
  - test01.jsp => webapp밑에
 2. Scriptlet 태그의 사용
  - JSP 페이지 안에 자바 코드를 넣고 싶을 때
 3. Expression태그의 사용
  - 계산식의 결과를 출력하고 싶을 때 사용
 4. Declaration 태그의 사용
  - 서블릿 클래스에 필드나 메서드를 추가하고 싶을 때
 5.스크립트릿에서 사용할 클래스를 임포트하기
  - 
 6. JSP 내장변수 (built-in variables)
  - _jspService() 메서드 안에 공식적으로 선언된 변수.
  - JSP 엔진은 클래스를 자동 생성할 때 반드시 다음 변수를 
   _jspService() 메서드에 선언해야 한다.
   request		: HttpServletRequest
   response		: HttpServletResponse
   pageContext 	: PageContext 
   session		: HttpSession
   application	: ServletContext
   config		: ServletConfig
   out			: JspWriter
   page			: Object 
   				  (서블릿 인스턴스 자신을 가리킴. 즉 this와 같다)
   error		: Exception 
   				  (Error를 처리하는 페이지라서 선언할 때만 이 변수가 생성된다.)
 * whitespace ? space(공백), new line, tab
 
 [JSP 액션 태그 사용법]
 <jsp:useBean> 
  - Test06.jsp
  
 <jsp:include>, <jsp:forward>
  - Test07.jsp: EL 연산자
 
 
 [JSP Expression Language 사용법]
  - Test10.jsp : EL연산자
 
 [JSTL(JSP Standard Tag Library) 사용법]
 
 
 
 
 
 
 
 