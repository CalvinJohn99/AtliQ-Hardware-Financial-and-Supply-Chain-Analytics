CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	in_market varchar(45),
    in_fiscal_year INT,
    in_top_n int
)
BEGIN
	select 
		customer,
		round(sum(net_sales)/1000000,2) as net_sales_mln
	from net_sales n
	join dim_customer c
	on n.customer_code=c.customer_code
	where fiscal_year=in_fiscal_year and c.market=in_market
	group by c.customer
	order by net_sales_mln desc
	limit in_top_n;
END