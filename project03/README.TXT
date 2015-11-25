[주제: UI 기술적용]

// 게시판서블릿에 HTML 적용

1. HTML table 태그 적용
  - BoardListServlet
 
 * 참고 CopyrightServlet에도 HTML 적용
    
2. HTML a태그 적용
  - 목록에서 특정 항목(게시물 제목, 학생 이름, 프로젝트 제목)을 
     상세 정보를 출력하는페이지와 연결한다.
    out.printf(" <td><a href='update?no=%d'>%s</a></td>\n",
                 board.getNo(),board.getTitle());
    
3. HTML form 태그 적용
  - BoardUpdate에 상세 정보를 출력하는 기능 추가
  - 이때 상세 정보는 테이블로 정돈하여 출력하라
  - ErrorServlet에도 HTML적용
  
4. HTML 파일 적용
  - 게시물 등록 폼을 위한 from.html 작성
  - BoardAddServlet에 doGet 대신 doPost 적용