
with cte1 as (
select 
	customer,
    round(sum(net_sales)/1000000,2) as net_sales_mln
from net_sales n
join dim_customer c
on n.customer_code=c.customer_code
where fiscal_year=2021
group by c.customer)
select *,
	net_sales_mln*100/sum(net_sales_mln) over() as pct
from cte1;

with cte1 as (
select 
	customer,
    c.market,
    round(sum(net_sales)/1000000,2) as net_sales_mln
from net_sales n
join dim_customer c
	on n.customer_code=c.customer_code
where fiscal_year=2021
group by c.customer, c.market)
select 
	*,
	net_sales_mln*100/sum(net_sales_mln) over(partition by market) as pct_share_market 
from cte1
order by market, net_sales_mln desc;


# Takeaways:
# A window function performs a calculation across a specified set of table rows with reference to the current row
# over() clause is a window function which will execute the aggregation formula across a specified set of rows
# To specify the set of rows, one can use the partition clause inside the over clause and specify the category name
# If nothing is specified inside over() function, it will take all the rows as one window
# One can create a chart in Excel within a few clicks 