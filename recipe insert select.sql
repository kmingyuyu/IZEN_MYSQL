
use yummy;

select * from recipe;
select * from member;
select * from member_img;
select * from follow;
select * from book_mark;
select * from category;
select * from review;

insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (1 , '회원사진' , '사진이름' , '사진url' , 1 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (5 , '회원사진2' , '사진이름2' , '사진ur2' , 8 , 'N');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (2 , '회원사진' , '사진이름' , '사진url' , 2 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (3 , '회원사진' , '사진이름' , '사진url' , 3 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (4 , '회원사진' , '사진이름' , '사진url' , 4 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (5 , '회원사진' , '사진이름' , '사진url' , 5 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (6 , '회원사진' , '사진이름' , '사진url' , 6 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (7 , '회원사진' , '사진이름' , '사진url' , 7 , 'Y');
insert into member_img(member_id , img_name , img_ori_name , img_url , member_img_id , img_main_ok) value (8 , '회원사진N' , '사진이름' , '사진urlN' , 1 , 'Y');

insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (1 , 1050 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (2 , 10 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),15);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (3 , 1 , '설명3' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (4 , 0 , '설명4' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (5 , 5000 , '설명5' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),20);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (6 , 1050 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (7 , 10 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (8 , 1 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),20);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (9 , 0 , '설명2' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),30);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (10 , 5000 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (11 , 400 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 3,sysdate(),20);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (12 , 20 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 5,sysdate(),10);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (13 , 150 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 4,sysdate(),50);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (14 , 250 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 2,sysdate(),0);
insert into recipe(recipe_id,count,description,reg_time,image_url,intro,level,sub_title,title,member_id,update_time,dur_time) value (15 , 4550 , '설명1' , sysdate() , '이미지1' , '인트로1' , 1 , '서브타이틀1' , '타이틀1' , 1,sysdate(),10);


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