/*
 * 주제 : 기능 정의 3
 * - function = method
 * - 문법
 * 	 작업결과값의 종류 기능명(작업할때 사용할 값1, 값2, 값3...){
 * 		 명령어...
 * 	 }
 */

package step04;

public class Exam03 {
	//1) 메서드 정의
	//return : 있음
	//parameter : 없음
		static String hello() {
			// 리턴 타입이 있으면 반드시 해당 타입의 데이터를 리턴해야 한다.
			return "Hello!";
			//return 10; // 다른 타입의 데이터를 리턴하면 문법 오류!
	}
	
	public static void main(String[] args) {
		hello();	// 메서드 호출을 호출했지만 리턴 값을 사용하지 않는 예
		
		String str = hello();	// 리턴 값을 받는 예.
		System.out.println(str);
	}

}
