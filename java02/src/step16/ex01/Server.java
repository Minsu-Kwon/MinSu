package step16.ex01;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

	public static void main(String[] args) {
		// ServerSocket - 클라이어트의 연결을 기다리는 역할.
		// port번호: 다른 서버 애플리케이션과 구분하기 위한 식별번호
		// 자주 사용되는 포트 번호 (well-known port number)
		// - HTTPS(HTTP + SSL): 443
		// - HTTP(Web Server)	: 80
		// - Proxy Server			: 8080
		// - telnet(원격접속)		: 23
		// - SSH(보안 쉘) 			: 22
		// - FTP							: 21
		// - Echo							: 7
		// - SMTP(메일 전송)		: 25
		// - POP3(메일 수신)		: 110
		// - IMAP(메일 수신)		: 143	//구글에서 사용
		Socket socket = null;
		InputStream in = null;
		InputStreamReader in2 = null;
		BufferedReader in3 = null;
		OutputStream out = null;
		PrintStream out2 = null;
		
		try (ServerSocket servSock = new ServerSocket(8888);)
		{
			//1) 대기열에서 기다리고 있는 클라이언트가 있다면 연결을 승인한다.
			// => 리턴 값 - 클라이언트와 연결된 소켓.
			// => 대기열에서 꺼낼 때는 큐(Queue: FIFO) 방식으로 다룬다.
			System.out.println("클라이언 연결 기다림...");
			socket = servSock.accept();
			System.out.println("클라이언트와 연결됨...");
			
			//2) 클라이언트와 데이터를 주고 받기 위한 도구를 준비한다.
			// => 입력 스트림 도구 준비.
			in = socket.getInputStream();
			in2 = new InputStreamReader(in);
			in3 = new BufferedReader(in2);

			//=> 출력 스트림 도구 준비
			out = socket.getOutputStream();
			out2 = new PrintStream(out);	//바이트 또는 캐릭터 출력 스트림을 모두 처리한다.
			
			//3) 클라이언트가 보낸 데이터를 읽는다.
			String message = in3.readLine();
			System.out.printf("클라이언트로 받은 메시지: %s\n", message);
			
			//4) 클라이언트로 메시지를 그대로 보낸다. -메아리(Echo)
			out2.println(message);
			System.out.printf("서버가 보낸 메시지: %s\n", message);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {in3.close();}	catch (Exception e) {
				//close()에 예외가 발생하더라도 무시한다. 특별하게 처리할 것이 없기 때문이다.
			}
			try {in2.close();}catch (Exception e) {}
			try {in.close();}catch (Exception e) {}
			
			try {out2.close();}catch (Exception e) {}
			try {out.close();}catch (Exception e) {}
			
			try {socket.close();}catch (Exception e) {}
		}
	}

}
