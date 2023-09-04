
use yummy;

commit;
SET FOREIGN_KEY_CHECKS=1;
select * from recipe;
select * from member;
select * from member_img;
select * from follow;
select * from book_mark;
select * from review;
select * from recipe;
select * from ingredient;
select * from recipe_order;
select * from item;
select * from item_img;
select * from item_review;
select * from item_review_answer;
select * from item_inq;
select * from item_inq_answer;
select * from item_review_img;
select *
from item_review
where item_review_id = 6;
select * from item_detail_img;

UPDATE item_inq
SET member_id = 1
WHERE item_id = 1;

insert into item_review_img (item_review_id,item_review_img_id,img_name,img_ori_name,img_url) value (1,1,'s','s','/img/쭈꾸미1.jpg');
insert into item_review_img (item_review_id,item_review_img_id,img_name,img_ori_name,img_url) value (1,2,'s','s','/img/쭈꾸미2.jpg');


insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (1 , '회원사진' ,  '사진url' , 1 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (5 , '회원사진2' ,  '사진ur2' , 8 , 'N');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (2 , '회원사진' , '사진url' , 2 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (3 , '회원사진' ,  '사진url' , 3 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (4 , '회원사진' , '사진url' , 4 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (5 , '회원사진' ,  '사진url' , 5 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (6 , '회원사진' ,  '사진url' , 6 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (7 , '회원사진' ,  '사진url' , 7 , 'Y');
insert into member_img(member_id , img_name , img_url , member_img_id , img_main_ok) value (8 , '회원사진N' ,  '사진urlN' , 1 , 'Y');

insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (1 , 1050  , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (2 , 10 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),15,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (3 , 1 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (4 , 0 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (5 , 5000 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),20 ,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (6 , 1050 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (7 , 10 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (8 , 1 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),20,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (9 , 0 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),30,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (10 , 5000 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (11 , 400 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),20,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (12 , 20 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 5,sysdate(),10,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (13 , 150, sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 4,sysdate(),50,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (14 , 250 , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),0,'메인요리','PUBLISHED','이미지이름');
insert into recipe(recipe_id,count,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time,category_enum,writing_status,img_name) value (15 , 4550  , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10,'메인요리','PUBLISHED','이미지이름');


insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (1 , sysdate() , null , 2 , 1);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (2 , sysdate() , null , 3 , 1);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (3 , sysdate() , null , 4 , 1);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (4 , sysdate() , null , 5 , 1);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (5 , sysdate() , null , 6 , 1);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (6 , sysdate() , null , 1 , 2);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (7 , sysdate() , null , 3 , 2);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (8 , sysdate() , null , 4 , 2);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (9 , sysdate() , null , 5 , 2);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (10 , sysdate() , null , 6 , 2);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (11 , sysdate() , null , 1 , 3);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (12 , sysdate() , null , 1 , 4);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (13 , sysdate() , null , 1 , 5);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (14 , sysdate() , null , 1 , 6);
insert into follow(follow_id,reg_time,update_time,member_id,to_member) value (15 , sysdate() , null , 1 , 7);

insert into book_mark(bookmark_id,member_id,recipe_id,reg_time,update_time,created_by,modified_by) value(1, 1, 10 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark(bookmark_id,member_id,recipe_id,reg_time,update_time,created_by,modified_by) value(2, 1, 14 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark(bookmark_id,member_id,recipe_id,reg_time,update_time,created_by,modified_by) value(3, 2, 10 , sysdate() , sysdate() , 'no' , 'no');
insert into book_mark(bookmark_id,member_id,recipe_id,reg_time,update_time,created_by,modified_by) value(4, 2, 1 , sysdate() , sysdate() , 'no' , 'no');

insert into category(category_id,category_enum,recipe_id) value( 1, '한식' , 1);
insert into category(category_id,category_enum,recipe_id) value( 2, '중식' , 2);
insert into category(category_id,category_enum,recipe_id) value( 3, '일식' , 3);
insert into category(category_id,category_enum,recipe_id) value( 4, '한식' , 4);
insert into category(category_id,category_enum,recipe_id) value( 5, '중식' , 5);
insert into category(category_id,category_enum,recipe_id) value( 6, '일식' , 6);
insert into category(category_id,category_enum,recipe_id) value( 7, '한식' , 7);
insert into category(category_id,category_enum,recipe_id) value( 8, '한식' , 8);
insert into category(category_id,category_enum,recipe_id) value( 9, '한식' , 9);
insert into category(category_id,category_enum,recipe_id) value( 10, '중식' , 10);
insert into category(category_id,category_enum,recipe_id) value( 11, '한식' , 11);
insert into category(category_id,category_enum,recipe_id) value( 12, '일식' , 12);
insert into category(category_id,category_enum,recipe_id) value( 13, '한식' , 13);
insert into category(category_id,category_enum,recipe_id) value( 14, '한식' , 14);
insert into category(category_id,category_enum,recipe_id) value( 15, '한식' , 15);

insert into review(review_id , member_id , recipe_id , reting , content) value (1 , 1 , 10 , 5 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (2 , 2 , 10 , 3 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (3 , 3 , 10 , 4 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (4 , 4 , 10 , 2 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (5 , 5 , 10 , 5 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (6 , 2 , 2 , 3 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (7 , 3 , 3 , 5 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (8 , 7 , 4 , 4 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (9 , 1 , 5 , 5 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (10 , 1 , 6 , 1 , '너무맛있어요');
insert into review(review_id , member_id , recipe_id , reting , content) value (11 , 1 , 7 , 5 , '너무맛있어요');

insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok) value(1, '이미지네임' , '이미지오리네임' , '/img/쭈꾸미1.jpg'  , 1 , 'Y');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok) value(6, '이미지네임' , '이미지오리네임' , '/img/쭈꾸미2.jpg'  , 1 , 'N');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok) value(7, '이미지네임' , '이미지오리네임' , '/img/쭈꾸미3.jpg'  , 1 , 'N');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok) value(8, '이미지네임' , '이미지오리네임' , '/img/쭈꾸미4.jpg'  , 1 , 'N');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok)  value(2, '이미지네임2' , '이미지오리네임2' , '유알엘2'  , 2 , 'Y');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok)  value(3, '이미지네임3' , '이미지오리네임3' , '유알엘3'  , 3 , 'Y');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok)  value(4, '이미지네임4' , '이미지오리네임4' , '유알엘4' , 4 , 'Y');
insert into item_img(item_img_id,img_name,img_ori_name,img_url,item_id,img_main_ok)  value(5, '이미지네임5' , '이미지오리네임5' , '유알엘5'  , 5 , 'Y');

insert into item(item_id,reg_time,update_time,created_by,modified_by,item_category_enum,item_nm,item_sell_status,item_sub_nm,price,sale,stock_number) value(1, sysdate() , sysdate() , null , null , '키친' , '이름' , 'SELL' , '서브이름' , 50000 , 50 , 500);
insert into item(item_id,reg_time,update_time,created_by,modified_by,item_category_enum,item_nm,item_sell_status,item_sub_nm,price,sale,stock_number) value(2, sysdate() , sysdate() , null , null , '가전'  , '이름2' , 'SELL' , '서브이름2', 34500 , 30 , 500);
insert into item(item_id,reg_time,update_time,created_by,modified_by,item_category_enum,item_nm,item_sell_status,item_sub_nm,price,sale,stock_number) value(3, sysdate() , sysdate() , null , null , '푸드' , '이름3' , 'SELL' , '서브이름3', 270000 , 0 , 500);
insert into item(item_id,reg_time,update_time,created_by,modified_by,item_category_enum,item_nm,item_sell_status,item_sub_nm,price,sale,stock_number) value(4, sysdate() , sysdate() , null , null , '리빙'  , '이름4' , 'SELL' , '서브이름4' , 6000 ,10 , 500);
insert into item(item_id,reg_time,update_time,created_by,modified_by,item_category_enum,item_nm,item_sell_status,item_sub_nm,price,sale,stock_number) value(5, sysdate() , sysdate() , null , null , '가전'  , '이름5' , 'SELL' , '서브이름5' , 50000 , 20 , 500);

select * from item_review;

select * from item_detail_img;

insert into item_detail_img(item_detal_img_id,img_name,img_ori_name,img_url,item_id) value(1,'네임' , '오리네임' , '/img/쭈꾸미상세1.jpg',1);
insert into item_detail_img(item_detal_img_id,img_name,img_ori_name,img_url,item_id) value(2,'네임' , '오리네임' , '/img/쭈꾸미상세2.jpg',1);
insert into item_detail_img(item_detal_img_id,img_name,img_ori_name,img_url,item_id) value(3,'네임' , '오리네임' , '/img/쭈꾸미상세3.gif',1);
insert into item_detail_img(item_detal_img_id,img_name,img_ori_name,img_url,item_id) value(4,'네임' , '오리네임' , '/img/쭈꾸미상세4.gif',1);
insert into item_detail_img(item_detal_img_id,img_name,img_ori_name,img_url,item_id) value(5,'네임' , '오리네임' , '/img/쭈꾸미상세5.jpg',1);

insert into item_review(item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id) value(1, sysdate(), sysdate() , null , null , '너무좋아요!' , 4.0 , 1 , 1);
insert into item_review(item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id)  value(2, sysdate(), sysdate() , null , null , '개구려요!' , 1.0 , 2 , 2);
insert into item_review(item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id)  value(3, sysdate(), sysdate() , null , null , '너무좋아요!' , 5.0 , 3 , 3);
insert into item_review (item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id) value(4, sysdate(), sysdate() , null , null , '너무좋아요!' , 3.0 , 4 , 4);
insert into item_review(item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id)  value(5, sysdate(), sysdate() , null , null , '너무좋아요!' , 4.0 , 5 , 5);
insert into item_review (item_review_id,reg_time,update_time,created_by,modified_by,content,reting,item_id,member_id) value(6, sysdate(), sysdate() , null , null , '개구려요!' , 1.0 , 1 , 6);


SELECT
    r.item_review_id AS review_id,
    r.content,
    r.reting,
    a.item_review_answer_id,
    a.content AS answer_content,
    a.reg_time as answer_reg
FROM
    item_review r
LEFT JOIN
    item_review_answer a ON r.item_review_id = a.item_review_id
    WHERE
    r.item_id = 1;