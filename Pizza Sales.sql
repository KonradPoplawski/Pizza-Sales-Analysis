-- Pizza sales in 2015


-- 1. Total revenue

select 
	round(sum(total_price),2) as Total_revenue
from Pizza_sales3;


-- 2. Average Order Value

select 
 round(sum(total_price) / count(distinct order_id), 2) as Avg_order_value
from pizza_sales3;


-- 3. Total pizza sold

select 
	sum(quantity) as Total_pizza_sold
from pizza_sales3; 

-- 4. Total orders

select 
	count(distinct order_id) as Total_orders
from pizza_sales3;


-- 5. Average Pizza Per Order

select 
	round(sum(quantity)/count(distinct order_id),2) as Avg_pizzas_per_order
from pizza_sales3;


-- 6. Daily trend of total orders

select 
	dayname(order_date) as order_day
	,count(distinct order_id) as total_orders
from pizza_sales3
group by 1
order by 2 desc; 


-- 7. Monthly trend of total orders

select 
	monthname(order_date) as order_month
	,count(distinct order_id) as total_orders
from pizza_sales3 
group by 1
order by 2 desc;


-- 8. Quater trend of total orders

select 
	quarter(order_date) as Quater
	,count(distinct order_id) as total_orders
from pizza_sales3 
group by 1;


-- 9. Percentage of Sales by pizza category

select 
	pizza_category
	,round(sum(total_price),0) as total_price_by_category
	,round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales3), 2) as percentage_of_sales
from pizza_sales3 
group by 1 
order by 2 desc; 


-- 10. Percentage of Sales by pizza size

select 
	pizza_size
	,round(sum(total_price),0) as total_price_by_size
	,round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales3), 2) as percentage_of_sales
from pizza_sales3 
group by 1 
order by 2 desc; 


-- 11. Top 5 best Sellers by Revenue

select 
	pizza_name
	,round(sum(total_price),0) as total_revenue
from pizza_sales3 
group by 1
order by 2 desc 
limit 5;


-- 12. Top 5 best Sellers by Total Quantity

select 
	pizza_name
	,round(sum(quantity),0) as total_quantity
from pizza_sales3
group by 1
order by 2 desc 
limit 5;
*/

-- 13. Top 5 best Sellers by Total Orders

select 
	pizza_name
	,round(count(distinct order_id),0) as total_orders
from pizza_sales3
group by 1
order by 2 desc 
limit 5;


-- 14. Hourly trend of orders

select 
	case 
		when hour(order_time) between 4 and 8 then 'Early Morning'
		when hour(order_time) between 8 and 12 then 'Late Morning'
		when hour(order_time) between 12 and 15 then 'Lunch'
		when hour(order_time) between 15 and 18 then 'Afternoon'
		when hour(order_time) between 18 and 21 then 'Evening'
		when hour(order_time) between 21 and 24 then 'Late Night'
		else 'Night'
	end as meal_time
	,count(distinct order_id) as total_orders
from pizza_sales3
group by 1
order by 2 desc;


-- 15. Hourly trend of revenue

select 
	case 
		when hour(order_time) between 4 and 8 then 'Early Morning'
		when hour(order_time) between 8 and 12 then 'Late Morning'
		when hour(order_time) between 12 and 15 then 'Lunch'
		when hour(order_time) between 15 and 18 then 'Afternoon'
		when hour(order_time) between 18 and 21 then 'Evening'
		when hour(order_time) between 21 and 24 then 'Late Night'
		else 'Night'
	end as meal_time
	,round(sum(total_price),0) as revenue
from pizza_sales3
group by 1
order by 2 desc;





	





	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	







