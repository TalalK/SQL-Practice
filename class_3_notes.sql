Third note taking class:

Select count(*)
From information_schema.column
where table.name = 'customers'


create table bar( foo integer)
insert into bar values('NULL');

foo :  A name example, a colloquial word in computer science, similar to loream ipsum to a designer.


Lecture 5: Joins. 
Review Lacture 6 Since no Class.

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

GROUP BY has its own Where Clause known as Having and is only used with Group By
Having has the same prcedence as the Where clause.


select order_num 
avg( item_price_ as 'avg(item_price)'
From orderitems
group by order_num
having
  order_num in
  (20005,20006,20009)
  and avg(item_price) > 4.00;
