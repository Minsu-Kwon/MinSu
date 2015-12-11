drop table board;
create table board (
bno 	int not null primary key auto_increment,
title 	varchar(255) not null,
file 	varchar(255),
costs 	varchar(255),
cre_dt 	datetime default now(),
views   int default 0,
address     varchar(255),
add_ty  varchar(255) default 'others',
other   varchar(255),
content text,
goods   int default 0,
point   int default 0
);

게시판
bno 번호 
title 제목
file 파일
cost비용
cre_dt 등록날짜
viesw 조회수
add 주소
add_ty 장소종류?
content 내용
goods 좋아요.
point 별점?

회원관리

drop table member;
create table member (
name varchar(50) not null,
email varchar(50) not null,
id varchar(20) not null,
pwd varchar(20) not null,
photo varchar(255),
tel varchar(20),
content text
);

회원관리 
name 회원이름
email 이메일
id 계정
pwd 계정비밀번호
photo 사진파일
tel 전화번호
content 자기소개

댓글
drop table comment;
create table comment (
name varchar(20),
content text,
cre_date datetime,
photo varchar(255)
);

name 이름
content 댓글내용
cre_dt 댓글작성일
photo 사진


