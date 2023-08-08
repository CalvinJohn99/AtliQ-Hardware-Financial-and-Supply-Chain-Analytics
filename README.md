![top_2_products_per_division_by_sold_qty](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/2067cb56-17d6-4b25-bc10-3b9644016aa3)
![top_5_customers_by_forecast_accuracy_2021](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/4df40e9c-5025-46e1-b606-c4f80a6f2f0e)
![top_3_customers_india_market](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/57d7851d-b84f-46fe-a21a-2802c7ff936b)
![top_5_markets](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/e8ebe8dd-dd00-413c-88f9-10bb8f8f0d99)
# AtliQ Hardware Financial & Supply Chain Analytics

This repository shows my work performing financial and supply chain analysis using **SQL** on a dataset of over **1.4 million records** that contains information about sales of AtliQ hardware (an extension of AtliQ Technologies) products during my time as a student in the Data Analytics Bootcamp by Codebasics. <br>

The task involved creating **3 database views**, performing **joins** across **7** tables, creating **5 stored procedures**, using **Window functions** and **CTEs**. All the relevant SQL files have been uploaded.
<br><br>

You can download the SQL database [here](https://drive.google.com/file/d/1Z96eV3o-IBi82XBc3gOtZDnWn4o_fSd3/view?usp=sharing) (to ensure the queries work make sure to create the helper table provided, and generate a new column named 'fiscal_year' in the 'fact_monthly_sales' table that calculates the financial year based on the 'date'. The new financial year for AtliQ starts in September, and ends the following august). <br>


## The Problem
In the problem, I had to generate reports for top customers, markets, products by net sales (calculated using `gross_price`, `sold_quantity`, `pre-invoice-discount-pct`, `discounts_pct`, `other_deductions_pct` columns) for a given financial year to get a holistics view of the company's financial performance. Additionaly, the accuracy of sales predictions (`forecast_quantity`) for the company were also calculated. <br><br>

![Uploading top_3_customers_india_market.png…]()
![Uploading top_5_markets.png…]()
![top_3_products](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/9463b0f9-9a63-47b2-be8c-b0f6898085e8)
![top_customers_market_share](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/27f0ff15-fd6d-4b16-ac7a-8edcba5489b2)
![top_2_products_per_division_by_sold_qty](https://github.com/CalvinJohn99/AtliQ-Hardware-Financial-and-Supply-Chain-Analytics/assets/40469219/883870a8-deb2-4eca-ad7e-48ae4d0e3a93)
![Uploading top_5_customers_by_forecast_accuracy_2021.png…]()
