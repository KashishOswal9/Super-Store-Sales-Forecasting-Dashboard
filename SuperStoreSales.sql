create database super_store_sales;

select * from superstoresales;
describe superstoresales;
set SQL_Safe_Updates=0;
update superstoresales
set Order_Date= str_to_date(Order_date,'%m/%d/%Y');

UPDATE superstoresales
SET Order_Date = DATE_FORMAT(Order_Date, '%d-%m-%Y');

update superstoresales
set Order_Date= str_to_date(Order_date,'%d-%m-%Y');

alter table superstoresales
modify column Order_Date date;

update superstoresales
set Ship_Date= str_to_date(Ship_date,'%m/%d/%Y');

UPDATE superstoresales
SET Ship_Date = DATE_FORMAT(Ship_Date, '%d-%m-%Y');

update superstoresales
set Ship_Date= str_to_date(Ship_date,'%d-%m-%Y');

alter table superstoresales
modify column Ship_Date date;
select round(sum(sales),1) as Total_sales
from superstoresales
where 
year(Order_Date)=2019;

select round(sum(sales),1) as Total_sales
from superstoresales
where 
year(Order_Date)=2020;

select round(sum(sales),1) as Total_sales
from superstoresales;

select round(sum(Profit),1) as Total_profit
from superstoresales
where
year(Order_Date)=2019;

select round(sum(Profit),1) as Total_profit
from superstoresales
where
year(Order_Date)=2020;

select round(sum(Profit),1) as Total_profit
from superstoresales;

select round(sum(Quantity),1) as Total_qty
from superstoresales
where
year(Order_Date)=2019;

select round(sum(Quantity),1) as Total_qty
from superstoresales
where
year(Order_Date)=2020;

select round(sum(Quantity),1) as Total_qty
from superstoresales;

select * from superstoresales;
SELECT 
	State,
	SUM(Sales) as Total_Sales
FROM superstoresales
WHERE
	year(Order_Date) =2019 
GROUP BY State
ORDER BY 	SUM(Sales) DESC;

SELECT 
	State,
	SUM(Sales) as Total_Sales
FROM superstoresales
WHERE
	year(Order_Date) =2020
GROUP BY State
ORDER BY 	SUM(Sales) DESC;

SELECT 
	State,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY State
ORDER BY 	SUM(Sales) DESC;

SELECT 
	Category,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY Category
ORDER BY 	SUM(Sales) DESC;

SELECT 
	Sub_Category,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY Sub_Category
ORDER BY 	SUM(Sales) DESC;

SELECT 
	Ship_Mode,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY Ship_Mode
ORDER BY 	SUM(Sales) DESC;

SELECT 
	Segment,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY Segment
ORDER BY 	SUM(Sales) DESC;

SELECT 
	Payment_Mode,
	SUM(Sales) as Total_Sales
FROM superstoresales
GROUP BY Payment_Mode
ORDER BY 	SUM(Sales) DESC;

SELECT 
    SUM(DATEDIFF(Ship_Date, Order_Date)) AS TotalDeliveryDays
FROM 
    superstoresales
WHERE 
    Order_Date IS NOT NULL 
    AND Ship_Date IS NOT NULL;



