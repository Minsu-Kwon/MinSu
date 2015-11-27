<%@ page language="java" 
		contentType="text/plain; charset=UTF-8"
    	pageEncoding="UTF-8"%>
 Hello,World!

 = <!-- HTML 주석은 콘텐츠, 출력 대상 -->
 = <%-- JSP 전용 주석 
 		서블릿 클래스를 만들 대 제거된다.
 		JSP 파일에 주석을 닫고 싶을 때 사용한다.
 		모든 공백 및 바꿈 조차도 출력된다.
   --%>
   <%-- JSP 코드 설명 
    1) %@ page 		: '페이지 지시어(directive element)'
    2) language 속성 : JSP 파일에 삽입할 프로그래밍 언어
  					   즉 특정 영역에서 사용하는 프로그래밍 언어
  					  ()
  					  영어로"Domain-Specific Language;DSL"이라 부느다.
  					  JSP 파일에 삽입할 수 있는 언어는 공식적으로 '자바'
	3) ContentType속성 : 응답 콘텐츠의 MIME 타입과 인코딩 문자 집합을 지정한다.
						결국 다음 자바 코드를 만든다.
						response.setContentType()
	4) pageEncpding 속성 : JSP 파일을 저장할 때 사용한 것문자집합을 지정한다
   --%>
   
   <%-- Template Date(템플릿 데이터)
   . 서블릿 클래스를 만들 때 out.println() 또는
   	 out.write() 등의 출력 코드로 만든다. 
   . 출력 코드는 jspServive()메서드에 생성된다 --%>
   