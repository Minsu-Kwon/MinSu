/*
 * 주제: 자바 핵심 클래스 - String (2)
 */

package step06;

import java.util.Scanner;

public class Exam02 {

	public static void main(String[] args) {
		String s1 = new String("Hello");
		String s2 = new String("Hello");
		
		// 레퍼런스에 저장된 주소 비교
		if (s1 != s2)
			System.out.println("틀려틀려");
		
		// 레퍼런스가 가리키는 인스턴스의 내용이 같은지 비교
		if (s1.equals(s2))
			System.out.println("같아같아");
	
		// 문자열을 비교할 때 == 을 사용한다고 오해하는 이유!
		String s3 = "Hello";
		String s4 = "Hello";
		// s3과 s4의 주소가 같다
		if (s3 == s4)
			System.out.println("같아같아");
		
		// 문자열 비교 응용:
		Scanner scanner = new Scanner(System.in);
		System.out.print("입력 >>");
		String str = scanner.nextLine();
		scanner.close();
		
		// 사용자가 입력한 문자열은 새 인스턴스에 들어있다.
		// 따라서 상수 문자열 "Hello" 인스턴스와 다른 주소이다.
		System.out.println(str);
		if (str == "Hello")	// 주소비교. 조심할것!
			System.out.println("인사했음");
		else if (str == "bye")
			System.out.println("잘가");
		else
			System.out.println("헐");
		
		// 해결책
		if (str.equals("Hello"))	// 인스턴스의 내용을 비교할 것! 오호라~ 바로 이것이야.
			System.out.println("인사했음");
		else if (str.equals("bye"))
			System.out.println("잘가");
		else
			System.out.println("헐");
			
			
			
	}
}