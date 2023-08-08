
with cte1 as (
		select 
			p.division,
			p.product, 
			sum(sold_quantity) as total_qty
		from fact_sales_monthly s
		join dim_product p
			on p.product_code=s.product_code
		where fiscal_year=2021
		group by p.product), 
	cte2 as (
		select 
			*, 
			dense_rank() over(partition by division order by total_qty desc) as drnk,
			rank() over(partition by division order by total_qty desc) as rnk,
			row_number() over(partition by division order by total_qty desc) as rn
		from cte1)
select * from cte2 where drnk<=2;

with cte1 as (
		select 
			c.market, 
			c.region,
			round(sum(net_sales)/1000000,2) as gross_sales_mln
		from net_sales n 
		join dim_customer c
		on n.customer_code=c.customer_code
		where fiscal_year=2021
		group by market),
	cte2 as (
		select 
			*,
			dense_rank() over(partition by region order by gross_sales_mln desc) as drnk
		from cte1)
select * from cte2
where drnk <=2;

# Takeaways
# row_number() function will assign the row number for the specified window of a table
# rank() and dense_rank() are used to find the rank of an entity within a specified window of the table
# rank() will skip ranks if the ranks are same while dense_rank() does not skip any rank
# It is a best practice to create a stored procedure for analysis that would be performed regularly, such as finding top N/Bottom N.