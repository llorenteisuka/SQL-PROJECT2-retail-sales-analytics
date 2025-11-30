Drop Database if exists retail_analytics;
CREATE DATABASE retail_analytics; 
USE retail_analytics;
 SELECT *
 FROM customers_data;
 
SELECT *
FROM products_data;

SELECT *
FROM sales_data;

Alter table customers_data 
Change `ï»¿CustomerID` `CustomerID` varchar(10);

Alter table products_data
Change `ï»¿ProductID` `ProductID` varchar(10);

Select count(CustomerID) as totalcustomer
From customers_data;

Select count(*) as totalproduct
From products_data;

Select count(*) as numbersales
From  sales_data;

Select sum(Quantity*UnitPrice) totalsales
From  sales_data;

Select CustomerID, sum(Quantity*UnitPrice) as totalsales
From  sales_data
group by CustomerID
Order by totalsales desc;

Select ProductID, sum(Quantity*UnitPrice) as totalsales
From  sales_data
group by ProductID
Order by totalsales desc;

