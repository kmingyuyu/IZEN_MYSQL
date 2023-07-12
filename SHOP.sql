use shop;


select * from member;

update member set role='ADMIN' where member_id = 1;

commit;

select data.num num, item.item_id id, item.item_nm itemNm, item.price price, item_img.img_url imgUrl, item_img.repimg_yn repimgYn 
            from item 
			inner join item_img on (item.item_id = item_img.item_id)
			inner join (select @ROWNUM:=@ROWNUM+1 num, groupdata.* from
			            (select order_item.item_id, count(*) cnt
			              from order_item
			              inner join orders on (order_item.order_id = orders.order_id)
			              where orders.order_status = 'ORDER'
			             group by order_item.item_id order by cnt desc) groupdata,
                          (SELECT @ROWNUM:=0) R 
                          limit 6) data
			on (item.item_id = data.item_id)
			where item_img.repimg_yn = 'Y'
			order by num;





