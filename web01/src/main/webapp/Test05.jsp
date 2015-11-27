<%-- 클래스 임포트하기
 . <%@ page import="패키지 정보"%>
 . 기존의 page 태그에 붙여도 되고, 새로 page 태그를 선언해도 된다.
 . 콤마(,)를 사용해서 여러개의 패키지를 임포트 할 수 있다.
 . 한 page 내에 여러 개의 import를 사용할 수 있다..
--%>
<%@ page language="java" 
		contentType="text/plain; charset=UTF-8"
    	pageEncoding="UTF-8"%>
    	
 <%
 // 1)임포트 없이 ArrayList 사용
 java.util.ArrayList list = null;
 
 // 2)page 지시어 태그를 이용하여 임포트를 한다면
 ArrayList list2 = null;
 %>
 
 <%-- 선언 순서는 상관없다. 
   어짜피 서블릿 클래스의 상단에 import 문장이 추가 될 것이기 때문이다.
   그래도 가능한 JSP 페이지에서 상단에 선언하라.
  --%>
 <%@ page import="java.util.ArrayList"--%>