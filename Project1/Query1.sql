use sales_data;

show tables;

Select * from sales_data_sample;
-- SALES REVENUE WITH RESPECT TO EACH PRODUCTCODE / PRODUCT 
Select PRODUCTCODE,
	SUM(SALES) AS TOTAL_REVENUE
FROM SALES_DATA_SAMPLE
GROUP BY PRODUCTCODE ;
    
-- SALES REVENUE WITH RESPECT TO EACH PRODUCTCODE / PRODUCT W.R.T. THE REVINUE IN DECREASING ORDER
Select PRODUCTCODE,
	SUM(SALES) AS TOTAL_REVENUE
FROM SALES_DATA_SAMPLE
GROUP BY PRODUCTCODE 
ORDER BY TOTAL_REVENUE DESC; 
-- The use of above code is to know which item is selling  more and generating more revinue. It has various use cases such as in we can use this 
-- data to sort the product in the inventory in such a way that the item selling more will be kept in nearby self and also it should ordered from
-- the company frequently to meet the needs of the customers.

-- Monthly revenue 
Select year_id,
		month_id,
        sum(sales) as Monthly_Sales
from sales_data_sample
group by year_id,month_id
order by year_id,month_id;

-- Rank Customer (limit)
Select CustomerName ,
	sum(sales) as Total_Spending
from sales_data_sample
group by CustomerName
order by Total_Spending desc;

-- Rank Product Sold as per quantity
Select distinct(ProductCode),
	Sum(Quantityordered) as Total_Quantity,
	ProductLine as Product_Type
from sales_data_sample
group by ProductCode, Product_Type
order by Total_Quantity desc;

-- Rank City as per revinue
select distinct(City) as City,
	sum(sales) as Total_Spending
from sales_data_sample
group by City
order by Total_Spending desc;

-- Rank Country as per revinue
select distinct(Country) as Country,
	sum(sales) as Total_Spending
from sales_data_sample
group by Country
order by Total_Spending desc;


