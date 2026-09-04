# Olist E-Commerce Customer & Sales Analysis

An end-to-end data analysis project on the Brazilian E-Commerce (Olist) public dataset, built to practice real-world data analyst workflows from raw relational data to a business-ready dashboard.

I loaded 100K+ orders across 9 relational tables into PostgreSQL and worked through the full pipeline: data cleaning, relationship validation, SQL-based business analysis and finally an interactive Power BI dashboard covering sales, product performance, customer behavior and delivery/review trends.

## Tools & Skills
SQL (PostgreSQL) · Power BI · Data Cleaning · Data Modeling · Business Analysis · Dashboard Design

## Process
1. **Data Loading** – Imported 9 CSV files (orders, customers, products, sellers, payments, reviews, geolocation) into PostgreSQL
2. **Data Quality Checks** – Checked for duplicates, missing values and validated relationships between tables (orders-customers, order items-products, order items-sellers)
3. **SQL Analysis** – Wrote business-focused queries and created 10+ analytical views covering sales trends, product performance, customer segmentation, delivery performance and review sentiment
4. **Dashboard Build** – Connected Power BI directly to the PostgreSQL views and designed a 3-page dashboard

## Dashboard Pages
**1. Business Overview** – Revenue, orders, customer and payment breakdowns, monthly sales trend, state-level revenue map

**2. Product & Delivery Performance** – Top product categories by revenue and quantity, delivery status breakdown, delivery time vs review score correlation

**3. Customer & Review Insights** – Repeat vs one-time customer split, review score distribution and sentiment, top customer states, orders-per-customer distribution

## Key Insights
- Total revenue analyzed: 13.59M across 99K orders
- Repeat customer rate sits at 3.08%, showing a mostly one-time-buyer customer base
- Average delivery time is 12.52 days, with a 7.99% late delivery rate
- Beleza e Saude (Beauty & Health) is the top-performing category by revenue
- Delivery delays show a visible link to lower review scores

## Preview
![Business Overview](page1.png)
![Product & Delivery Performance](page2.png)
![Customer & Review Insights](page3.png)
