commit;

use yummy;

select * from recipe;
select * from member;

insert into recipe values();

insert into member (member_id , phone_number)  value (1 , 01071280150);


insert into recipe value (10 , 1 , sysdate() , 1 , 1 , '본문test' , '이미지test' , 'introtest' , '서브타이틀test' , '제목test');
insert into recipe value (5 , 1 , sysdate() , 1 , 2 , '본문test2' , '이미지test2' , 'introtest2' , '서브타이틀test2' , '제목test2');
insert into recipe value (4 , 1 , sysdate() , 1 , 3 , '본문test3' , '이미지test3' , 'introtest3' , '서브타이틀test3' , '제목test3');
insert into recipe value (55 , 1 , sysdate() , 1 , 4 , '본문test4' , '이미지test4' , 'introtest4' , '서브타이틀test4' , '제목test4');
insert into recipe value (60 , 1 , sysdate() , 1 , 5 , '본문test5' , '이미지test5' , 'introtest5' , '서브타이틀test5' , '제목test5');
insert into recipe value (1250 , 1 , sysdate() , 1 , 6 , '본문test6' , '이미지test6' , 'introtest6' , '서브타이틀test6' , '제목test6');

insert into member value(01071280150 , 1 , sysdate() , sysdate() , 'test' , 'admin1@naver.com', 'test' , '민규민규1' , 'test' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(01071280150 , 2 , sysdate() , sysdate() , 'test' , 'admin2@naver.com', 'test' , '민규민규2' , 'test' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(01071280150 , 3 , sysdate() , sysdate() , 'test' , 'admin3@naver.com', 'test' , '민규민규3' , 'test' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(01071280150 , 4 , sysdate() , sysdate() , 'test' , 'admin4@naver.com', 'test' , '민규민규4' , 'test' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(01071280150 , 5 , sysdate() , sysdate() , 'test' , 'admin5@naver.com', 'test' , '민규민규5' , 'test' , 'Y' , 'Y' , 'ADMIN' , 'Y');

select * from follower;
select * from following;
insert into following value (1 , 1 , '민규민규2');
insert into following value (2 , 1 , '민규민규3');


select * from member where nickname = '민규민규2';

select * 
from member t1 , following t2
where t1.nickname = t2.name
and t2.member_id = 1;

select name from following where member_id = 1;


select * from recipe order by recipe_id asc LIMIT 5;