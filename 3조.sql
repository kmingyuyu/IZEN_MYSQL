commit;

create database yummy;

use yummy;

select * from recipe;
select * from member;

select * from member_img;
insert into member_img value (1 , '회원사진' , '사진이름' , '사진url' , 1 , 'Y');
insert into member_img value (5 , '회원사진2' , '사진이름2' , '사진ur2' , 1 , 'N');
insert into member_img value (2 , '회원사진' , '사진이름' , '사진url' , 2 , 'Y');
insert into member_img value (3 , '회원사진' , '사진이름' , '사진url' , 3 , 'Y');
insert into member_img value (4 , '회원사진' , '사진이름' , '사진url' , 4 , 'Y');
insert into member_img value (5 , '회원사진' , '사진이름' , '사진url' , 5 , 'Y');
insert into member_img value (6 , '회원사진' , '사진이름' , '사진url' , 6 , 'Y');
insert into member_img value (7 , '회원사진' , '사진이름' , '사진url' , 7 , 'Y');
insert into member_img value (8 , '회원사진N' , '사진이름' , '사진urlN' , 1 , 'Y');

insert into member_img value (1 , 1 , 'Y' , '이미지NAME' , '이미지NAME' , '이미지URL1');
insert into member_img value (1 , 2 , 'Y' , '이미지NAME' , '이미지NAME' , '이미지URL1');
insert into member_img value (1 , 3 , 'Y' , '이미지NAME' , '이미지NAME' , '이미지URL1');
insert into member_img value (1 , 4 , 'Y' , '이미지NAME' , '이미지NAME' , '이미지URL1');
insert into member_img value (1 , 5 , 'Y' , '이미지NAME' , '이미지NAME' , '이미지URL1');

insert into recipe value (1 , 1050 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1);
insert into recipe value (2 , 10 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1);
insert into recipe value (3 , 1 , '설명3' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1);
insert into recipe value (4 , 0 , '설명4' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1);
insert into recipe value (5 , 5000 , '설명5' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1);

insert into recipe value (6 , 1050 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2);
insert into recipe value (7 , 10 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2);
insert into recipe value (8 , 1 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3);
insert into recipe value (9 , 0 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3);
insert into recipe value (10 , 5000 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3);


insert into recipe value (4 , '1' , '초급' , 1 , 1 , '본문test1' , '이미지test3' , 'introtest1' , '서브타이틀test1' , '제목test1' ,sysdate() , sysdate());
insert into recipe value (55 , '1' , '초급' , 1 , 2 , '본문test2' , '이미지test4' , 'introtest2' , '서브타이틀test2' , '제목test2' ,sysdate() , sysdate());
insert into recipe value (60 , '1' , '초급' , 1 , 3, '본문test3' , '이미지test5' , 'introtest3' , '서브타이틀test3' , '제목test3' ,sysdate() , sysdate());
insert into recipe value (1050, '1' , '초급' , 1 , 4 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' ,  sysdate() , sysdate());
insert into recipe value (10, '1' , '초급', 2 , 5 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (130, '1' , '초급', 2 , 6 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (10, '1' , '초급', 2 , 7 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (0, '1' , '초급', 1 , 8 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (5, '1' , '초급', 1 , 9 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (20, '1' , '초급', 3 , 10 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (25, '1' , '초급', 4 , 11 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (10, '1' , '초급', 5 , 12 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (5500, '1' , '초급', 6 , 13 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());
insert into recipe value (444, '1' , '초급', 7 , 14 , '본문test4' , '이미지test6' , 'introtest4' , '서브타이틀test4' , '제목test4' , sysdate() , sysdate());


insert into member value(1 , sysdate() , sysdate() , '1' , '1' , 'admin' , '민규민규' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(2 , sysdate() , sysdate() , '1' , '1' , 'admin2' , '민규민규2' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(3 , sysdate() , sysdate() , '1' , '1' , 'admin3' , '민규민규3' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(4 , sysdate() , sysdate() , '1' , '1' , 'admin4' , '민규민규4' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(5 , sysdate() , sysdate() , '1' , '1' , 'admin5' , '민규민규5' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(6 , sysdate() , sysdate() , '1' , '1' , 'admin6' , '민규민규6' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value(7 , sysdate() , sysdate() , '1' , '1' , 'admin7' , '민규민규7' , '비밀번호' , 01071280150 , 'Y' , 'Y' , 'ADMIN' , 'Y');

insert into member value (01071280150 , 1 , sysdate() , sysdate() , '1' , '이메일' , 'ㅇ' , '닉네임1' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 2 , sysdate() , sysdate() , '1' , '이메일2' , 'ㅇ' , '닉네임2' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 3 , sysdate() , sysdate() , '1' , '이메일3' , 'ㅇ' , '닉네임3' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 4 , sysdate() , sysdate() , '1' , '이메일4' , 'ㅇ' , '닉네임4' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 5 , sysdate() , sysdate() , '1' , '이메일5' , 'ㅇ' , '닉네임5' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 6 , sysdate() , sysdate() , '1' , '이메일6' , 'ㅇ' , '닉네임6' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');
insert into member value (01071280150 , 7 , sysdate() , sysdate() , '1' , '이메일7' , 'ㅇ' , '닉네임7' , '비밀번호' , 'Y' , 'Y' , 'ADMIN' , 'Y');




select * from member where nickname = '민규민규2';

select * 
from member t1 , following t2
where t1.nickname = t2.name
and t2.member_id = 1;

select name from following where member_id = 1;



select * from recipe order by recipe_id asc LIMIT 5;

insert into follow value (1 , sysdate() , null , 2 , 1);
insert into follow value (2 , sysdate() , null , 3 , 1);
insert into follow value (3 , sysdate() , null , 4 , 1);
insert into follow value (4 , sysdate() , null , 5 , 1);
insert into follow value (5 , sysdate() , null , 6 , 1);

insert into follow value (6 , sysdate() , null , 1 , 2);
insert into follow value (7 , sysdate() , null , 3 , 2);
insert into follow value (8 , sysdate() , null , 4 , 2);
insert into follow value (9 , sysdate() , null , 5 , 2);
insert into follow value (10 , sysdate() , null , 6 , 2);

insert into follow value (11 , sysdate() , null , 1 , 3);
insert into follow value (12 , sysdate() , null , 1 , 4);
insert into follow value (13 , sysdate() , null , 1 , 5);
insert into follow value (14 , sysdate() , null , 1 , 6);
insert into follow value (15 , sysdate() , null , 1 , 7);


insert into follow value (1 , 1 , sysdate() , 2 , sysdate());
insert into follow value (2 , 1 , sysdate() , 3 , sysdate());
insert into follow value (3 , 2 , sysdate() , 1 , sysdate());
insert into follow value (4 , 3 , sysdate() , 1 , sysdate());
insert into follow value (5 , 4 , sysdate() , 1 , sysdate());
insert into follow value (6 , 5 , sysdate() , 1 , sysdate());
insert into follow value (7 , 6 , sysdate() , 1 , sysdate());

select * from follow;

select * from book_mark;
select * from recipe;
insert into book_mark value(1, 1, 10 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark value(2, 1, 14 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark value(3, 2, 10 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark value(4, 2, 1 , sysdate() , sysdate() , 'no' , 'no');

## 1번 회원이 북마크한 레시피 정보
select r.*
from recipe r
where recipe_id in  (select recipe_id 
                    from book_mark
                    where member_id = 1);

## 레시피의 모든정보와 레시피에 북마크된 횟수 (북마크많은순)
SELECT
 ROW_NUMBER() OVER (ORDER BY  COUNT(bm.recipe_id) desc) AS NUM,
 COUNT(bm.recipe_id) AS bookmark_count,
    r.*
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
GROUP BY
    r.recipe_id
    order by COUNT(bm.recipe_id) desc;

## 레시피의 모든정보와 레시피에 북마크된 횟수 (최신순)
SELECT
 ROW_NUMBER() OVER (ORDER BY  r.reg_time desc) AS NUM,
 COUNT(bm.recipe_id) AS bookmark_count,
    r.*
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
GROUP BY
    r.recipe_id
    order by r.reg_time desc;

select * from category;
select * from type;


#1번 회원이 팔로잉 하는 회원수
select  count(to_member) follow  
from follow  
where member_id=1;

#1번 회원을 팔로우 하는 회원수
select  count(member_id) follow  
from follow  
where to_member=1;

## 1번회원을 팔로우하는 회원들 정보
select *  
from member
where member_id in (select member_id 
                    from follow
                    where to_member=1);
                    
## 1번회원이 팔로잉하는 회원들 정보
select *  
from member
where member_id in (select to_member 
                    from follow
                    where member_id=1);                    

select * from category;

#1번 회원이 팔로잉 하는 회원수
select  count(to_member) follow  
from follow  
where member_id=1;

#1번 회원을 팔로우 하는 회원수
select  count(member_id) follow  
from follow  
where to_member=1;


## 1번 회원의 모든 정보와 팔로워수 / 팔로잉수
SELECT
    followers.followers_count AS followers_count,
    followings.followings_count AS followings_count ,
    m.* 
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    WHERE to_member = 1
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    WHERE member_id = 1
    GROUP BY member_id
) followings ON m.member_id = followings.member_id
WHERE m.member_id = 1;

## 모든 회원의 정보와 팔로잉수 / 팔로워수 
SELECT
    followers.followers_count AS followers_count,
    followings.followings_count AS followings_count, 
    m.*
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    GROUP BY member_id
) followings ON m.member_id = followings.member_id;

select * from recipe;

## 모든 회원의 팔로워 / 팔로잉 / 레시피수  ( 팔로워 만은순 으로 정렬 )
SELECT
    followers.followers_count AS followers_count,
    followings.followings_count AS followings_count, 
    recipes.recipes_count AS recipe_count , 
    m.nickName  
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    GROUP BY member_id
) followings ON m.member_id = followings.member_id
LEFT JOIN (
    SELECT member_id, COUNT(recipe_id) AS recipes_count
    FROM recipe
    GROUP BY member_id
) recipes ON m.member_id = recipes.member_id
order by followers.followers_count desc;

## 모든 회원의 팔로워 / 팔로잉 / 레시피수  ( 팔로워 만은순 으로 정렬 ) count null=0으로 처리 처리안할시 에러
SELECT
    ifnull(followers.followers_count ,0) AS followers_count,
	ifnull(followings.followings_count ,0) AS followings_count, 
    ifnull(recipes.recipes_count ,0) AS recipe_count ,
    m.member_id,
    m.nickname , 
    img.img_url AS img_url,
    img.img_name AS img_name,
    img.img_main_ok AS img_main_ok
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    GROUP BY member_id
) followings ON m.member_id = followings.member_id
LEFT JOIN (
    SELECT member_id, COUNT(recipe_id) AS recipes_count
    FROM recipe
    GROUP BY member_id
) recipes ON m.member_id = recipes.member_id
LEFT JOIN member_img img ON m.member_id = img.member_id
WHERE img.img_main_ok = 'Y' OR img.img_main_ok = 'NONE' 
order by followers.followers_count desc;


SELECT
    ROW_NUMBER() OVER (ORDER BY followers.followers_count DESC) AS NUM,
    IFNULL(followers.followers_count, 0) AS followers_count,
    IFNULL(followings.followings_count, 0) AS followings_count,
    IFNULL(recipes.recipes_count, 0) AS recipe_count,
    m.member_id,
    m.nickname,
    IFNULL(img.img_url , 'NONE') AS img_url,
    IFNULL(img.img_name, 'NONE') AS img_name,
    IFNULL(img.img_main_ok , 'NONE') AS img_main_ok
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    GROUP BY member_id
) followings ON m.member_id = followings.member_id
LEFT JOIN (
    SELECT member_id, COUNT(recipe_id) AS recipes_count
    FROM recipe
    GROUP BY member_id
) recipes ON m.member_id = recipes.member_id
LEFT JOIN member_img img ON m.member_id = img.member_id
WHERE img.img_main_ok = 'Y' 
ORDER BY followers.followers_count DESC;

SELECT
    IFNULL(followers.followers_count, 0) AS followers_count,
    IFNULL(followings.followings_count, 0) AS followings_count,
    IFNULL(recipes.recipes_count, 0) AS recipe_count,
    m.member_id,
    m.nickname,
    IFNULL(img.img_url, 'none') AS img_url,
    IFNULL(img.img_name, 'none') AS img_name,
    IFNULL(img.img_main_ok, 'none') AS img_main_ok
FROM member m
LEFT JOIN (
    SELECT to_member, COUNT(member_id) AS followers_count
    FROM follow
    GROUP BY to_member
) followers ON m.member_id = followers.to_member
LEFT JOIN (
    SELECT member_id, COUNT(to_member) AS followings_count
    FROM follow
    GROUP BY member_id
) followings ON m.member_id = followings.member_id
LEFT JOIN (
    SELECT member_id, COUNT(recipe_id) AS recipes_count
    FROM recipe
    GROUP BY member_id
) recipes ON m.member_id = recipes.member_id
LEFT JOIN member_img img ON m.member_id = img.member_id
		WHERE img.img_main_ok = 'Y' 
       OR img.member_id IS NULL
ORDER BY followers_count DESC;

