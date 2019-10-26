--Third note taking class:

Select count(*)
From information_schema.column
where table.name = 'customers'


create table bar( foo integer)
insert into bar values('NULL');

-- foo :  A name example, a colloquial word in computer science, similar to loream ipsum to a designer.


--Lecture 5: Joins. 
--Review Lacture 6 Since no Class.

Grouping:

AVG()
SUM()

Select avg(item_price)
from orderitems;

GROUP BY allowss for adding aggregate results

select order_num 
min( item_price_ as 'max(item_price)'
From orderitems
group by order_num;



Filtering Grouping:

--GROUP BY has its own Where Clause known as Having and is only used with Group By
--Having has the same prcedence as the Where clause.


select order_num 
avg( item_price_ as 'avg(item_price)'
From orderitems
group by order_num
having
  order_num in
  (20005,20006,20009)
    and avg(item_price) > 4.00;
    
    
 
select order_num 
avg( item_price_ as 'avg(item_price)'
From orderitems
where item_price > 5
group by order_num
having
  order_num in
  (20005,20006,20009)
    and avg(item_price) > 4.00;
    
 Aggregate functions return the aggregate... 
    
Subqueries:
    
 Select ...
 From ...
 Where <column> in
    (
     Select <column>
     From <table>
    );
    
 Select order_num
 From orderitems
 Where prod_id ='BNBG03'
  
    
 Select distinct cust_id
 From orders
 Where order_num in
    (
     Select order_num
     From <table>
    );
    
Subqueries analyzed from the inner subquery to the outermost subquery
    They can be tested independently through highlighting and executing.
    
    
 select cust_name
    from customers
    where cust_id in
    ( 
      select distinct cust_id
      drom orders
      where order_num in
      (
        select order_num in
        (select order_num
        from orderitem
        where prod_id = 'BNBG03'
        )
      );
    
The Glue is the cust_id with the subquery and the order_num with the inner most subquery.
      
      select 
      prod_price
      from products
      where prod_prince in
      (
        select max(prod_price)
        from products
       );
      
      
-- Table Aliases And JOINS 
      
select v.vendos 
      
      
 
