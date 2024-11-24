SELECT *
from portfolio..supplychain

---TOTAL PROFIT 

select payment_type, sum(profit_per_order) as total_profit
from portfolio..supplychain
group by payment_type
order by total_profit





----TOTAL SALES
select payment_type, sum(sales_per_customer) as total_sales
from portfolio..supplychain
group by payment_type
order by total_sales





----CATEGORY WITH MOST SALES
select category_name, sum(sales_per_customer) as total_sales
from portfolio..supplychain
group by category_name
order by  total_sales desc





----CATEGORY WITH MOST PROFIT 
select category_name, sum(profit_per_order) as total_profit
from portfolio..supplychain
group by category_name
order by total_profit desc






---MOST PROFIT BY STATE
select customer_state, sum(profit_per_order) as total_profit
from portfolio..supplychain
where profit_per_order is not null
group by customer_state
order by total_profit desc





----MOST SALES BY STATE
select customer_state, sum(sales_per_customer) as total_sales
from portfolio..supplychain
where sales_per_customer is not null
group by customer_state
order by total_sales desc




----CUSTOMER WITH MOST SALES
select customer_id, customer_segment, sum(sales_per_customer) as total_sales
from portfolio..supplychain
group by customer_id, customer_segment
order by total_sales desc





---CUSTOMER THAT MADE MOST PROFIT
select customer_id, sum(profit_per_order) as total_profit
from portfolio..supplychain
group by customer_id
order by total_profit desc
