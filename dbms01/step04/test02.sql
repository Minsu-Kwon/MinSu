-- skf짜 데이터 출력 형식 다루기
select bno, title, cre_dt
from board;

-- 1) mm/dd/yyyy 형식으로 출력하기
select bno, title, date_format(cre_dt, '%m/%d/%Y') as createDate
from board;

/*
Y : 2015 (년)
y : 15 (년)
M : November (월)
m : 11 (월)
D : 3rd (일)
d : 3 (일)

*/

-- 2) 날짜 계산하기
select bno, title, cre_dt, adddate(cre_dt, 7)
from board;

select datediff('2015-11-03', '1972-01-01');







