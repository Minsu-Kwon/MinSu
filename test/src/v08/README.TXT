작업목표: DAO(Data Access Object)
=> 데이터를 처리하는 기능을 별도의 클래스 분리한다.
=> DAO와 같은 클래스를 데이터 퍼시스턴스(persistence) 클래스라 부른다.
=> 데이터의 지속성(저장, 변경, 삭제 및 로딩) 을 관리한다.

실습:
1. ValueObject 클래스를 별도의 패키지로 분류하자!
   domain(또는 dto, vo)패키지 생성하여,
   Student와 Project 클래스를 이패키지로 이동시킨다.
   
2. Control 클래스를 별도의 패키지로 분류하자
   패키지명은 control 로 한다.
   StudentControl, ProjectControl, BoardControl,
   MenuControl, StorageMenuControl 클래스를 이동
   
3. DAO 클래스들을 담을 패키지를 준비한다.
   dao라는 패키지를 생성하라.
   
4. StudentControl 로부터 프로젝트 데이터를 다루는(저장, 로딩) 기능을 분리하여 
   Student Dao 클래스로 만든다.