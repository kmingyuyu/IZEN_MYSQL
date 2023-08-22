commit;

create database yummy;

use yummy;

select * from recipe;
select * from member;

select * from member_img;



select * from member where nickname = '민규민규2';

select * 
from member t1 , following t2
where t1.nickname = t2.name
and t2.member_id = 1;

select name from following where member_id = 1;



select * from recipe order by recipe_id asc LIMIT 5;


select * from follow;

select * from book_mark;
select * from recipe;


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
    r.* , 
    m.nickname
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
LEFT JOIN
	member m ON m.member_id = bm.member_id
GROUP BY
    r.recipe_id
    order by COUNT(bm.recipe_id) desc;

SELECT
	ROW_NUMBER() OVER (ORDER BY  COUNT(bm.recipe_id) desc) AS NUM,
    COUNT(bm.recipe_id) AS bookmark_count,
    r.recipe_id,r.count,r.description,r.dur_time,r.image_url,r.intro,r.level,r.sub_title,r.title,r.member_id,
    m.nickname,
    mi.img_url   AS member_img,
    mi.img_main_ok  AS main_ok
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
JOIN
    member m ON r.member_id = m.member_id
JOIN
    member_img mi ON m.member_id = mi.member_id
GROUP BY
     r.recipe_id,r.count,r.description,r.dur_time,r.image_url,r.intro,r.level,r.sub_title,r.title,r.member_id, m.nickname,
    mi.img_url , mi.img_main_ok

     order by COUNT(bm.recipe_id) desc;
	
    ## r.title like '%%';

SELECT
    ROW_NUMBER() OVER (ORDER BY COUNT(bm.recipe_id) DESC) AS NUM,
    COUNT(bm.recipe_id) AS bookmark_count,
    r.recipe_id, r.count, r.description, r.dur_time, r.image_url, r.intro, r.level, r.sub_title, r.title, r.member_id,
    m.nickname,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_url
    END AS member_img,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_main_ok
    END AS main_ok
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
JOIN
    member m ON r.member_id = m.member_id
LEFT JOIN
    member_img mi ON m.member_id = mi.member_id AND mi.img_main_ok = 'Y'
GROUP BY
    r.recipe_id, r.count, r.description, r.dur_time, r.image_url, r.intro, r.level, r.sub_title, r.title, r.member_id, m.nickname,
    mi.img_url, mi.img_main_ok
ORDER BY
    COUNT(bm.recipe_id) DESC;

select * from category;

insert into category value( 1, '메인' , 1);

SELECT
    ROW_NUMBER() OVER (ORDER BY COUNT(bm.recipe_id) DESC) AS NUM,
    COUNT(bm.recipe_id) AS bookmark_count,
    r.recipe_id, r.count,  r.dur_time, r.image_url, r.level, r.sub_title, r.title, r.member_id, r.reg_time,
    m.nickname,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_url
    END AS member_img,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_main_ok
    END AS main_ok,
    c.category_enum AS category_enum
FROM
    recipe r
LEFT JOIN
    book_mark bm ON r.recipe_id = bm.recipe_id
JOIN
    member m ON r.member_id = m.member_id
LEFT JOIN
    member_img mi ON m.member_id = mi.member_id AND mi.img_main_ok = 'Y'
JOIN
    category c ON r.recipe_id = c.recipe_id
GROUP BY
    r.recipe_id, r.count, r.dur_time, r.image_url, r.level, r.sub_title, r.title, r.member_id, m.nickname,  r.reg_time ,
    mi.img_url, mi.img_main_ok, c.category_enum
ORDER BY
    COUNT(bm.recipe_id) DESC;

select *
from review;
# 순차번호/북마크수/리뷰수/리뷰평점/레시피아이디/조회수/소요시간/메인사진/난이도/부제목/제목/멤버아이디/레시피생성시간/멤버닉네임/멤버메인사진/메인사진여부 y or none/카테고리명
# 레시피 북마크 많은 순
SELECT
    ROW_NUMBER() OVER (ORDER BY bm_count DESC) AS NUM,
    ifnull(bm_count , 0) AS bookmark_count,
    ifnull(rv_count , 0) AS review_count,
    COALESCE(rv_avg, 0) AS reting_avg,
    r.recipe_id, r.count, r.dur_time, r.image_url, r.level, r.sub_title, r.title, r.member_id, r.reg_time, r.intro,
    m.nickname,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_url
    END AS member_img,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_main_ok
    END AS main_ok,
    c.category_enum AS category_enum
FROM recipe r
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS bm_count
    FROM book_mark
    GROUP BY recipe_id
) bm ON r.recipe_id = bm.recipe_id
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS rv_count, COALESCE(AVG(reting), 0) AS rv_avg
    FROM review
    GROUP BY recipe_id
) rv ON r.recipe_id = rv.recipe_id
JOIN member m ON r.member_id = m.member_id
LEFT JOIN member_img mi ON m.member_id = mi.member_id AND mi.img_main_ok = 'Y'
JOIN category c ON r.recipe_id = c.recipe_id
ORDER BY bm_count DESC;

# 순차번호/북마크수/리뷰수/리뷰평점/레시피아이디/조회수/소요시간/메인사진/난이도/부제목/제목/멤버아이디/레시피생성시간/멤버닉네임/멤버메인사진/메인사진여부 y or none/카테고리명
# 레시피 리뷰 많은 순
SELECT
    ROW_NUMBER() OVER (ORDER BY rv_count DESC) AS NUM,
    ifnull(bm_count , 0) AS bookmark_count,
    ifnull(rv_count , 0) AS review_count,
    COALESCE(rv_avg, 0) AS reting_avg,
    r.recipe_id, r.count, r.dur_time, r.image_url, r.level, r.sub_title, r.title, r.member_id, r.reg_time, r.intro,
    m.nickname,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_url
    END AS member_img,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_main_ok
    END AS main_ok,
    c.category_enum AS category_enum
FROM recipe r
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS bm_count
    FROM book_mark
    GROUP BY recipe_id
) bm ON r.recipe_id = bm.recipe_id
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS rv_count, COALESCE(AVG(reting), 0) AS rv_avg
    FROM review
    GROUP BY recipe_id
) rv ON r.recipe_id = rv.recipe_id
JOIN member m ON r.member_id = m.member_id
LEFT JOIN member_img mi ON m.member_id = mi.member_id AND mi.img_main_ok = 'Y'
JOIN category c ON r.recipe_id = c.recipe_id
ORDER BY rv_count DESC;

# 순차번호/북마크수/리뷰수/리뷰평점/레시피아이디/조회수/소요시간/메인사진/난이도/부제목/제목/멤버아이디/레시피생성시간/멤버닉네임/멤버메인사진/메인사진여부 y or none/카테고리명
# 레시피 최신 순
SELECT
    ROW_NUMBER() OVER (ORDER BY r.reg_time DESC) AS NUM,
    ifnull(bm_count , 0) AS bookmark_count,
    ifnull(rv_count , 0) AS review_count,
    COALESCE(rv_avg, 0) AS reting_avg,
    r.recipe_id, r.count, r.dur_time, r.image_url, r.level, r.sub_title, r.title, r.member_id, r.reg_time, r.intro,
    m.nickname,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_url
    END AS member_img,
    CASE
        WHEN mi.member_id IS NULL THEN 'none'
        ELSE mi.img_main_ok
    END AS main_ok,
    c.category_enum AS category_enum
FROM recipe r
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS bm_count
    FROM book_mark
    GROUP BY recipe_id
) bm ON r.recipe_id = bm.recipe_id
LEFT JOIN (
    SELECT recipe_id, COUNT(*) AS rv_count, COALESCE(AVG(reting), 0) AS rv_avg
    FROM review
    GROUP BY recipe_id
) rv ON r.recipe_id = rv.recipe_id
JOIN member m ON r.member_id = m.member_id
LEFT JOIN member_img mi ON m.member_id = mi.member_id AND mi.img_main_ok = 'Y'
JOIN category c ON r.recipe_id = c.recipe_id
ORDER BY r.reg_time DESC;

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

