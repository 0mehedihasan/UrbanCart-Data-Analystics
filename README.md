# UrbanCart Data Analytics

Professional SQL-based business analytics report for the UrbanCart e-commerce dataset.

## 1) Project Name
**UrbanCart Data Analytics**

## 2) Project Overview
UrbanCart is an online retail business operating across multiple cities. This project analyzes transactional data to produce actionable insights for sales growth, customer retention, product performance, payment optimization, and daily operations.

## 3) Project Objective
The project objective is to answer business-critical analytical questions using SQL across:
- Sales and revenue performance
- Customer behavior and retention
- Product and category performance
- Inventory risk
- Payment behavior
- Product affinity and bundling
- Daily business reporting

## 4) Database Analysis & Summary
The repository follows a dimensional model using fact and dimension tables.

### Core Tables
- **DimCustomers**: customer profile data (name, email, city, gender, account creation date)
- **FactOrders**: order header data (order, customer link, date, status)
- **FactOrderItems**: line-item level sales data (order, product, quantity)
- **DimProducts**: product metadata (name, category, price, stock)
- **FactPayment**: order-level payment method information

### Analytical Coverage
- **Sales Analysis**: Q01, Q02, Q04, Q06, Q07, Q08, Q09
- **Customer Analysis**: Q03, Q11, Q13, Q14, Q15, Q16
- **Inventory Analysis**: Q10
- **Payment Analysis**: Q17, Q18, Q19, Q20, Q21
- **Product Analysis**: Q22, Q23, Q24
- **Business Reporting**: Q25

## 5) ER Diagram
![ER Diagram](ER_Diagram.png.webp)

## 6) Questions, Queries & Outputs
Each item includes **Question Number**, **Question Name**, **SQL Query File**, and **PNG Output**.

### Q1
- **Name:** Total Orders Received
- **Query:** `sql_queries/Q01_Total_orders.sql`
- **PNG:** `outputs/Q1_result.png`

### Q2
- **Name:** Top Cities by Orders and Revenue
- **Query:** `sql_queries/Q02_city_orders_revenue.sql`
- **PNG:** `outputs/Q2_result.png`

### Q3
- **Name:** Gmail Customer Percentage
- **Query:** `sql_queries/Q03_gmail_percentage.sql`
- **PNG:** `outputs/Q3_result.png`

### Q4
- **Name:** Monthly Order Trend
- **Query:** `sql_queries/Q04_monthly_order_trend.sql`
- **PNG:** `outputs/Q4_result.png`

### Q5
- **Name:** Not available in current repository
- **Query:** Not available
- **PNG:** Not available

### Q6
- **Name:** Total Revenue Generated
- **Query:** `sql_queries/Q06_total_revenue.sql`
- **PNG:** `outputs/Q6_result.png`

### Q7
- **Name:** Revenue by Product Category
- **Query:** `sql_queries/Q07_category_revenue.sql`
- **PNG:** `outputs/Q7_result.png`

### Q8
- **Name:** Top Revenue Generating Products
- **Query:** `sql_queries/Q08_top_products_revenue.sql`
- **PNG:** `outputs/Q8_result.png`

### Q9
- **Name:** Average Order Value and Basket Size
- **Query:** `sql_queries/Q09_aov_basket_size.sql`
- **PNG:** `outputs/Q9_result.png`

### Q10
- **Name:** Stock-out Risk Products
- **Query:** `sql_queries/Q10_stockout_risk.sql`
- **PNG:** `outputs/Q10_result.png`

### Q11
- **Name:** Top Revenue Contributing Customers
- **Query:** `sql_queries/Q11_top_customers.sql`
- **PNG:** `outputs/Q11_result.png`

### Q12
- **Name:** Cancellation Rate by City and Customer
- **Query:** `sql_queries/Q12_cancellation_rate.sql`
- **PNG:** `outputs/Q12_result.png`

### Q13
- **Name:** Gender-Based Purchasing Pattern
- **Query:** `sql_queries/Q13_gender_purchase_pattern.sql`
- **PNG:** `outputs/Q13_result.png`

### Q14
- **Name:** Customer Behavior Since Account Creation
- **Query:** `sql_queries/Q14_customer_behavior_since_creation.sql`
- **PNG:** `outputs/Q14_result.png`

### Q15
- **Name:** Customers Ordered in October but Not in December
- **Query:** `sql_queries/Q15_october_not_december.sql`
- **PNG:** `outputs/Q15_result.png`

### Q16
- **Name:** Customers Ordered in October and December
- **Query:** `sql_queries/Q16_october_and_december.sql`
- **PNG:** `outputs/Q16_result.png`

### Q17
- **Name:** Most Used Payment Method
- **Query:** `sql_queries/Q17_Most_Used_Payment_Method.sqls`
- **PNG:** `outputs/Q17_result.png`

### Q18
- **Name:** Payment Method vs Order Status
- **Query:** `sql_queries/Q18_payment_methot_vs_order_status.sql`
- **PNG:** `outputs/Q18_result.png`

### Q19
- **Name:** City-wise Payment Preference
- **Query:** `sql_queries/Q19_city_payment_preference.sql`
- **PNG:** `outputs/Q19_result.png`

### Q20
- **Name:** Higher-Value Orders vs Payment Method
- **Query:** `sql_queries/Q20_higher_value_vs_payment_method.sql`
- **PNG:** `outputs/Q20_result.png`

### Q21
- **Name:** Average Items per Order by Payment Method
- **Query:** `sql_queries/Q21_average_items_per_order_by_payment_method.sql`
- **PNG:** `outputs/Q21_result.png`

### Q22
- **Name:** Product Price vs Category Average
- **Query:** `sql_queries/Q22_product_price_vs_category_average.sql`
- **PNG:** `outputs/Q22_result.png`

### Q23
- **Name:** Most Frequent Product Pairs
- **Query:** `sql_queries/Q23_most_frequent_product_pairs.sql`
- **PNG:** `outputs/Q23_result.png`

### Q24
- **Name:** Highest Revenue Product Pairs
- **Query:** `sql_queries/Q24_highest_revenue_product_pairs.sql`
- **PNG:** `outputs/Q24_result.png`

### Q25
- **Name:** Daily Business Performance Report
- **Query:** `sql_queries/Q25_daily_report.sql`
- **PNG:** `outputs/Q25_result.png`

## 7) Key Findings
- Total order volume is strong and shows temporal trends by month.
- Revenue is concentrated in specific cities and top products.
- A small customer segment contributes a high share of revenue.
- Some products show stock pressure due to sales volume vs inventory.
- Payment method usage differs by city, order status, and order value.
- Product-pair patterns indicate clear bundling opportunities.

## 8) Recommendations
- Focus growth campaigns on top-revenue cities and categories.
- Launch retention actions for customers with seasonal drop-off patterns.
- Set monitoring and replenishment alerts for high-demand, low-stock products.
- Optimize payment incentives around high-performing methods.
- Build bundle offers from frequent and high-revenue product pairs.
- Add missing Q5 artifacts and standardize SQL file naming in future updates.

## Repository Structure
```text
UrbanCart-Data-Analystics/
├── README.md
├── ER_Diagram.png.webp
├── database/
├── sql_queries/
└── outputs/
```
