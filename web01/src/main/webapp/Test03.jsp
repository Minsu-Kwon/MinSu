<%-- 특별한 출력문 : Expression Element
. <%= 출력문의 파라미터 값 %>
. 자바 : out.print(출력문의 파라미터 값);
. 계산된 값을 출력할 때 유용
--%>
<%@ page language="java" 
		contentType="text/plain; charset=UTF-8"
    	pageEncoding="UTF-8"%>
    	
2 * 2 = <%=4%> <%--자바코드: out.print(4); --%>
2 * 2 = <%= 2 * 2%> <%--자바코드: out.print(2*2); --%>
2 * 2 = <%=(2 * 2) > 4 ? "4보다 크다":"4보다 같거나 작다" %>
<%--자바코드: out.print((2 * 2) > 4 ? "4보다 크다":"4보다 같거나 작다"); --%>

<%-- <%=for(){}%> 
문법 오류! 불가능 out.print(for(){};)
<%=2;%>   
문법 오류! 불가능 out.print(2;);
<%out.println("okok")%>
문법 오류! 불가능 out.println("out.println("okok")"); --%>