# SQL:

select vend_id, vend name,
form vendors
where vend_id != 'BR501'
or vend_id = 'FR01;

select distinct vend_id,
from products;

# DISTINCT summarizes the vales as it adds all the similar columns.

-- Filtering

Select *,
From vendors,
Where vend_country = 'USA'
-- No need to add quotes for numericals.
-- strings will always need a single quote.

-- Floating point number is a numeric
Select *,
From orderitems,
where item_price = 3.49 ;


/*

= Euality 
<> or != Inequality
< Less
> Greater
<= or !> Less than or Equal to OR Greater than 
>= or !< Greater than or Equal to  OR Lesser than 
Between value is between two other values
is Null value is Null
Is NOT NULL value is not null

*/

True / False with AND / OR
T and T = T
T and F = F
F and T = F
F and F = F

T OR T = T
T OR F = T
F OR T = T
F OR F + F

SELECT vend_id, prod_price,
FROM products,
Where vend_id = 'BR501', and prod_price >= 8,99;


