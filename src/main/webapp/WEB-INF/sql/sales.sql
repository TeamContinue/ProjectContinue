<![CDATA[
select *
from (
         select ws_num, ss_price, ss_img, ss_name, dv_fee, total, @rno := @rno + 1 as r
         from (
                  select ws_num, ss_price, ss_img, ss_name, dv_fee, ss_price+dv_fee as total
                  from tb_wish wi join tb_sales sa
                                       on wi.ss_num = sa.ss_num join tb_delivery de
                                                                     on sa.dv_num = de.dv_num
                  where mem_id = #{mem_id}
              ) AA, (select @rno := 0) BB
     ) CC
where r >= #{startRow} and r <= #{endRow}
    ]]>


select ss_img, ss_price, ss_name
from tb_sales
where sl_id = 'codingking';

select *
from(
    select ss_img, ss_price, ss_name
    from tb_sales
    where sl_id = 'codingking'
) AA,
    (select @rno :=0) BB


select *
from(
        select *,  @rno := @rno +1 as r
        from(
                select ss_img, ss_price, ss_name
                from tb_sales
                where sl_id = 'codingking'
            ) AA,
            (select @rno :=0) BB
    )CC
where r >=1 and r<=5;