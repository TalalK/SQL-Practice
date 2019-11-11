-- previously covered, SubQueried and Joins.
-- Subqueries join tables without any relationship with each other EG, Primary and secondary Key


select cust_name 
from customes
where cust_id in 
(
  select DISTINCT cust_od
  from orders
  where order_num in 
  (
    Select order_num
    from orderitems
    where prod_id = 'BNBG03'
  )
):
-- five items in an order, with two distinct orders from a customer ID, which will return only one customer.
-- Subquery only use, was in the 18 inch teddy bear example. As Subquerying can return a price as a filter.
-- Joining would need two tables, however the sae table may be joined twice.

select cust_id, count(*) from orders group by cust_id;

select * from orders where cust_id = '1000000001'



-- The ANSI JOIN
 select *
 from a
 join b on a.c = b.c
 
 
 Insert into vendors
 (vend_id,
  vend_name);
 
 Values 
 ('TOY1',
  'Totally_Toys');
  
OR 

insert into vendors 
values  Values 
 ('TOY1',
  'Totally_Toys');

 
 

