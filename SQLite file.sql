SELECT *
FROM sales_data_sample

--Identify the total number of invoices, unique customers, and product categories.
------------------Total number of invoices, Uniqe Customers, Product categorey-----------------
SELECT count(DISTINCT ORDERNUMBER)   Total_invoices,
  count(DISTINCT productline) product_categorey,
  count(DISTINCT customername ) Unique_customers_count
from sales_data_sample

----------Calculate basic summary statistics for key metrics like total sales amount---------
SELECT 
sum(quantityordered) Total_quantity_ordered,
min(quantityordered) min_quantity_ordered,
max(quantityordered) max_quantity_ordered,
AVG(quantityordered) avg_quantity_ordered,
count(quantityordered) number_of_orders,
sum(cast(sales as real)) Total_sales,
min(cast(sales as real)) min_sales,
max(cast(sales as real)) max_sales,
avg(cast(sales as real) avg_sales,
count(sales) number_of_sales,
sum(cast(priceeach as REAL)) Total_priceeach,
min(cast(priceeach as real)) min_priceeach,
max(cast(priceeach as real)) max_priceeach,
avg(cast(priceeach as real)) avg_priceeach

FROM sales_data_sample

------Most frequentely purchased item--------
SELECT productcode, productline,
    count (*) purchases_number
from sales_data_sample
GROUP by 1, 2
order by purchases_number DESC
limit 10
    
    
---------Purchase Patterns by Country-------
SELECT country,
    count (*) num_of_orders,
    sum(cast(sales as real)) Total_sales
from sales_data_sample
GROUP by 1
order by 3 DESC

--------sales by product line----------------
SELECT productline,
    count(*) num_of_orders,
    sum(cast(sales as real)) total_sales
from sales_data_sample
group by productline
order by total_sales DESC

-------Monthly sales pattern-----------
SELECT month_id,
    year_id,
    sum(cast(sales as real)) total_sales
from sales_data_sample
group by month_id
order by total_sales DESC

------------Top customers by sales---------
select customername,
    sum(cast(sales as real)) total_sales
from sales_data_sample
GROUP by customername
order by total_sales DESC
LIMIT 10
    
--------- dealsize for each country---------
SELECT dealsize,
    country
from sales_data_sample
GROUP by country
order by dealsize DESC
LIMIT 10 
    
    
    

    




