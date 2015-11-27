<%-- EL사용법 (Expression Language)--%>
<%@ page language="java" 
		contentType="text/plain; charset=UTF-8"
    	pageEncoding="UTF-8"
    	trimDirectiveWhitespaces="true"%>
   
<% // EL 문법 테스트를 위해 보관소에 데이터 넣기
 application.setAttribute("v1", "컨텍스트 값");
 session.setAttribute("v2", "세션 값");
 request.setAttribute("v3", "요청 값");
 pageContext.setAttribute("v4", "페이지값");
 pageContext.setAttribute("v5", "페이지값...");
 application.setAttribute("v5", "컨텍스트값...");
%>

<% // 데이터를 꺼내는 문법
String v1 = (String)pageContext.findAttribute("v1");
String v2 = (String)pageContext.findAttribute("v2");
String v3 = (String)pageContext.findAttribute("v3");
String v4 = (String)pageContext.findAttribute("v4");
String v5 = (String)pageContext.findAttribute("v5");

/*findAttribute()가 값을 찾는 순서
JspContext(PageContext) 
  -> ServletRequest 
    -> HttpSession 
      -> ServletContext 
        -> null
*/
%>
<%-- EL을 사용하여 보관소에서 값 꺼내기
=> 문법
{보관소명.객체이름}

객체이름 중간에 공백이나 특수 문자를 포함할 경우 다음의 문법을 사용하면 된다.
{보관소명["객체이름"]} 
=>보관소명
pageScope			=> JspContext
requestScope		=> ServletRequest
sessionScope		=> HttpSession
applicationScope	=> ServletContext
--%>
v1 = ${applicationScope.v1}
v2 = ${sessionScope.v2}
v3 = ${request.v3}
v4 = ${pageContext.v4}
v5 = ${v5}