package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class test07 {

	public static void main(String[] args) {
		Connection con = null;
		Statement stmt = null;
		try (
				// java.lang.AutoCloseable 구현체인 경우,
				// try ~ catch를 실행한 후 자동으로 close()가 호출된다.
				Scanner scanner = new Scanner(System.in);
				)
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/java76db", "java76", "1111");

			stmt = con.createStatement();

			System.out.print("제목?");
			String title = scanner.nextLine();

			System.out.print("내용?");
			String context = scanner.nextLine();

			// insert 실행
			int count = stmt.executeUpdate(
					"insert into board(title,context,cre_dt)"
							+ " values('" + title + "','" + context + "',now())");

			/*
			 * 사용자가 입력한 값을 가지고 SQL문을 생성할 때 문제점
			 * 1) 사용자가 입력한 값 중에 따옴표(')를 포함하고있으면 오류가 발생한다.
			 * 2) 사용자가 임의의 SQL문을 넣을 수 있다.(치명적이다!)
			 */
			
			if (count <= 0)
				System.out.println("입력실패");
			else
				System.out.println("입력성공!");


		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {stmt.close();} catch (Exception e) {}
			try {con.close();} catch (Exception e) {}
		}
	}

}
