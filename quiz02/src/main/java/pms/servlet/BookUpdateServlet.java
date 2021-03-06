package pms.servlet;

import java.io.PrintStream;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import pms.dao.BookDao;
import pms.domain.Book;

@Component("/book/update")
public class BookUpdateServlet implements Servlet {
	@Autowired
	BookDao bookDao;

	@Override
	public void service(HashMap<String,Object> params) {
		Book book = new Book();

		book.setNo(Integer.parseInt((String)params.get("no")));
		book.setTitle((String)params.get("title"));
		book.setAuthors((String)params.get("authors"));
		book.setPress((String)params.get("press"));
		book.setTag((String)params.get("tag"));

		PrintStream out = (PrintStream)params.get("out");

		if (bookDao.update(book) > 0) {
			out.println("도서정보가 변경되었습니다.");
		} else
			out.println("존재하지 않는도서입니다.");
	}


}
