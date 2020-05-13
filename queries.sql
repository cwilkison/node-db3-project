-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
FROM Product as p
JOIN Category as c
ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id, s.CompanyName
from [order] as o
join shipper as s 
on s.Id = o.shipvia
where o.orderDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName, o.Quantity
from Product as p
join OrderDetail as o
on p.Id = o.productid
where o.OrderId = 10251
order by p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id, c.companyname, e.lastname
from [order] as o
join customer as c on c.id = o.customerid
join employee as e on e.id = o.employeeid;