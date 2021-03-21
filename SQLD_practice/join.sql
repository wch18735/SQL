select * from orders;
select * from orderdetails;
select customerNumber, customerName from customers;
select * from products;

-- join practice
select orderNumber, sum(priceEach * quantityOrdered) as total
from orderdetails
group by orderNumber;

-- result
select C.customerName, O.orderNumber, P.total from customers as C
join orders as O 
on C.customerNumber = O.customerNumber
join (select orderNumber, sum(priceEach * quantityOrdered) as total -- multiple join
from orderdetails
group by orderNumber) as P -- subquery
on O.orderNumber = P.orderNumber;

-- rollup: for subtotal
-- oracle -> rollup(columns) vs mysql -> columns with rollup
-- oracle decode vs mysql if
select 
if(orderNumber is not null, orderNumber, '합계') as orderNumber, 
sum(priceEach) as sum
from orderdetails
group by orderNumber with rollup;

