# AtliQ Hardware Financial & Supply Chain Analytics

This repository shows my work performing financial and supply chain analysis using **SQL** on a dataset of over **1.4 million records** that contains information about sales of AtliQ hardware (an extension of AtliQ Technologies) products during my time as a student in the Data Analytics Bootcamp by Codebasics. <br>

The task involved creating **3 database views**, performing **joins** across **7** tables, creating **5 stored procedures**, using **Window functions** and **CTEs**. All the relevant SQL files have been uploaded.
<br><br>

You can download the SQL database [here](https://drive.google.com/file/d/1Z96eV3o-IBi82XBc3gOtZDnWn4o_fSd3/view?usp=sharing) (to ensure the queries work make sure to create the helper table provided, and generate a new column named 'fiscal_year' in the 'fact_monthly_sales' table that calculates the financial year based on the 'date'. The new financial year for AtliQ starts in September, and ends the following august). <br>


## The Problem
In the problem, I had to generate reports for top customers, markets, products by net sales (calculated using `gross_price`, `sold_quantity`, `pre-invoice-discount-pct`, `discounts_pct`, `other_deductions_pct` columns) for a given financial year to get a holistics view of the company's financial performance. Additionaly, the accuracy of sales predictions (`forecast_quantity`) for the company were also calculated. <br><br>

## Results

*Note: All the results shown here were obtained using the stored procedures and the SQL scripts in the 'Insights Using Window Functions' folder for the 2021 financial year.*
*Note: I will let the visualisations speak for themselves here...*
<br><br>

### Top 3 Customers in the Indian Market
![top_3_customers_india_market](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/091302fe-70b0-45cd-b12e-fd3785b72fba)
<br><br>

### Top 5 Markets
![top_5_markets](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/3b5bb15e-1bc3-45d5-8ec2-452f62b11bbf)

### Top 3 Products
![top_3_products](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/9463b0f9-9a63-47b2-be8c-b0f6898085e8)

<br><br>

### Top 10 Customers by Net Sales and their Market Share
![top_customers_market_share](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/27f0ff15-fd6d-4b16-ac7a-8edcba5489b2)
<br><br>

### Top 2 products per Division by Sold Quantity
![top_2_products_per_division_by_sold_qty](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/883870a8-deb2-4eca-ad7e-48ae4d0e3a93)
<br><br>

### Top 5 Customers by Forecast Accuracy
![top_5_customers_by_forecast_accuracy_2021_table](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/cb2ba834-aeeb-42cb-baf9-9ae3da28ede9)

![top_5_customers_by_forecast_accuracy_2021](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/ce0f7759-be2e-49cd-9d60-2b1e7741b726)

