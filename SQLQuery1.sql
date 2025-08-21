Select * From pizza_sales;

 Select SUM(total_price) AS "Totla Revenue" From pizza_sales;
 
 Select Round(SUM(total_price)/ COUNT(DISTINCT order_id),2) AS "Average Order Value" FROM pizza_sales;

 Select SUM(quantity) as"Total Pizza Sold" From pizza_sales;

 Select Count(Distinct order_id) As "Total Orders" FROM pizza_sales;

 Select CAST(CAST(Sum(quantity) as decimal(10,2)) / 
 Cast(Count(DISTINCT order_id) as Decimal(10,2)) as DECIMAL(10,2)) As Avg_pizza_order From pizza_sales;

 Select DATENAME(DW, order_date)as order_day, Count(Distinct order_id)as Total_orders 
 From pizza_sales 
 Group by  DATENAME(DW, order_date);

 Select DATENAME(MONTH, order_date) as Order_Month, Count(Distinct order_id) as Total_orders
 From pizza_sales
 Group by DATENAME(MONTH, order_date);

 Select pizza_category , Sum(total_price)*100 /(Select Sum(total_price)from pizza_sales) as Total_revenue,
 Cast((sum(total_price) *100)  / (Select sum(total_price) from pizza_sales)as Decimal(10,2)) AS PCT
from pizza_sales
 group by pizza_category; 

 Select pizza_category,Cast(Sum(total_price)*100 / (Select sum(total_price) from pizza_sales) as Decimal(10,2))As 
 Total_Percentage_of_Sales_By_Pizza_Category
 from pizza_sales
 group by pizza_category; 
 
 Select pizza_size,Cast(Sum(total_price)*100 / (Select sum(total_price) from pizza_sales) as Decimal(10,2))As 
 Total_Percentage_of_Sales_By_Pizza_Category
 from pizza_sales
 group by pizza_size
 Order By pizza_size;

 Select  DATENAME(MONTH,order_date) as Order_Day,Cast(Sum(total_price)as decimal(10,2)) as Total_sales 
 from pizza_sales
 group by DATENAME(MONTH,order_date) 
 ORDER BY Sum(total_price) DESC;

 Select pizza_category, Sum(quantity)  As Total_quantity From Pizza_sales
 Group by pizza_category 
 ORDER BY Sum(quantity) DESC;

 Select pizza_category, Sum(quantity)  As Total_quantity From Pizza_sales
 WHERE MONTH(Order_date)=2
 Group by pizza_category 
 ORDER BY Sum(quantity) DESC;

 SELECT Top 5 Pizza_name, Sum(total_price) As Total_Revenue From pizza_sales
 Group by Pizza_name
 Order by Total_Revenue DESC;

 SELECT TOP 5  Pizza_name, Sum(total_price) As Total_Revenue From pizza_sales
 Group by Pizza_name
 Order by Total_Revenue ASC;

 SELECT Top 5 Pizza_name, Sum(quantity) As Total_quantity From pizza_sales
 Group by Pizza_name
 Order by Total_quantity DESC;

 SELECT Top 5 Pizza_name, Sum(quantity) As Total_quantity From pizza_sales
 Group by Pizza_name
 Order by Total_quantity ASC;

 SELECT Top 5 Pizza_name, Count(DISTINCT order_id) As Total_Orders From pizza_sales
 Group by Pizza_name
 Order by Total_Orders DESC;

  SELECT Top 5 Pizza_name, Count(DISTINCT order_id) As Total_Orders From pizza_sales
 Group by Pizza_name
 Order by Total_Orders ASC;

 SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC;

