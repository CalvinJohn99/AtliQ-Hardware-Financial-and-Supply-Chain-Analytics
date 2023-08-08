# AtliQ Hardware Financial & Supply Chain Analytics

This repository shows my work performing financial and supply chain analysis using **SQL** on a dataset of over **1.4 million records** that contains information about sales of AtliQ hardware (an extension of AtliQ Technologies) products during my time as a student in the Data Analytics Bootcamp by Codebasics. <br> You can download the SQL database [here](https://drive.google.com/file/d/1Z96eV3o-IBi82XBc3gOtZDnWn4o_fSd3/view?usp=sharing) (to ensure the queries work make sure to create the helper table provided, and generate a new column named 'fiscal_year' in the 'fact_monthly_sales' table that calculates the financial year based on the 'date'. The new financial year for AtliQ starts in September, and ends the following august). <br>

The task involved creating **3 database views**, performing **joins** across **7** tables, creating **5 stored procedures**, using **Window functions** and **CTEs**. All the relevant SQL files have been uploaded.
<br><br>

## The Problem
In the problem, I had to generate reports for top customers, markets, products by net sales (calculated using `gross_price`, `sold_quantity`, `pre-invoice-discount-pct`, `discounts_pct`, `other_deductions_pct` columns) for a given financial year to get a holistics view of the company's financial performance. Additionaly, the accuracy of sales predictions (`forecast_quantity`) for the company were also calculated. <br><br>

