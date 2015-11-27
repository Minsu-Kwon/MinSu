<%-- 여러개를 임포트 할 때는 page 지시어를 여러 개 선언하면 된다
 . <%@ page import="패키지 정보"%>
 . 기존의 page 태그에 붙여도 되고, 새로 page 태그를 선언해도 된다.
 . 콤마(,)를 사용해서 여러개의 패키지를 임포트 할 수 있다.
 . 단 한 page 내에 여러 개의 import가 올 수 없다.
--%>
<%@ page import="java.util.ArrayList"--%>
<%@ page import="java.io.File"--%>
<%@ page import="java.net.Socket"--%>
<%@ page language="java" 
		contentType="text/plain; charset=UTF-8"
    	pageEncoding="UTF-8"%>
    	
 <%
 ArrayList list2 = null;
 File f = null;
 Socket s = null;
 %>
