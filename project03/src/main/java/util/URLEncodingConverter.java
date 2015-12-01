package util;

import java.net.URLEncoder;

public class URLEncodingConverter {
  public static void main(String[] args) throws Exception {
    String str = "ABC가각간";
    
    // 문자열 --> ASCII 코드로 변환
    // 0041 0042 0043 AC80 AC01 AC03 
    // ---> 414243B0A1B0A2B0A3 
    // 문자열을 EUC-KR로 바꿀 때, 영어는 그대로 둔다.
    // 한글은 7비트를 초과하기 때문에ASCII 문자화(영문화)시킨다.
    // 즉 숫자를 알파벳(영어)으로 바꾼다 URL인코딩
    // 다음 코드를 보면 7비트를 초과하는 바이트를 찾을 수 없다.
    // ---> 41 42 43 25 42 30 41 31 42 30 41 32
    String urlEncoding = URLEncoder.encode(str, "UTF-8");
    System.out.println(str + " ---> " + urlEncoding);
  }
}




