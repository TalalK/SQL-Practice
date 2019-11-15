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

 
 -- lecture 8
 -- NULLability tables
 -- PRIMARY KEYS CANNOT BE NULL
 
 Create TABLE Vendors
 (
   vend_id  char(10) NOT NULL,
   vend_name char(50) UNIQUE NOT NULL,
   vend_name char(50) NULL,
   vend_address char(50) NULL, 
 
   CONSTRAINT PK_Products
    PRIMARY KEY CLUSTERED(prod_id),
   
   CONSTRAINT PK_PRODUCTS_VENDORS
    FOREIGN KEY(vend_id)
      REFERENCES Vendors(vend_id)
 );
  
-- Unique constraint makes sure that only one reference of the value is addable 
-- It makes sure there are no duplicates.

-- check data integrity constraint examples
age int check( age > 21 ) 
gender char( 1 ) check (gender in ('M','F','U'))
email varchar(128)check(email like '%@%.%')
phone char(14) check(phone like '(___) ___-____')

-- To make sure only numbers can be added.
phone char(14) check(phone like '([0-9][0-9][0-9]) [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')

-- Altering Tables
                                   
ALTER TABLE <table>
ADD <column> <data> {<attribute>};
                                   

alter table vendors 
add vend_email char(225);

alter table vendors 
add vend_email char(225)
                                   
alter table
alter <table> 
                                   
create view <view-name> as
select ...;
