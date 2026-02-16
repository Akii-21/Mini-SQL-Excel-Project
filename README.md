# Mini SQL + Excel Sales Analysis Project

This project performs an end-to-end analysis of a retail sales dataset using SQL and Microsoft Excel.

## Objective
To analyze sales performance and understand how revenue varies across:
- Time (monthly trends)
- Gender
- Age groups

## Tools Used
- SQL (MySQL) for data preparation and feature engineering
- Microsoft Excel (PivotTables & dashboards) for analysis and visualization

## Workflow
1. Raw sales data was imported into SQL.
2. Schema cleanup was performed (data types, column renaming, primary key).
3. Data validation checks were applied (age, quantity).
4. A derived column (`age_group`) was created using SQL CASE logic.
5. Processed data was imported into Excel.
6. PivotTables and charts were used to build a dashboard and extract insights.

## Key Insights
- Sales exhibit seasonal fluctuations rather than a consistent upward or downward trend.
- Certain age groups contribute a higher share of total revenue.
- Spending patterns differ across genders.

## Repository Structure
- `Raw Data set/` – Original dataset
- `SQL Code/` – SQL scripts used for data preparation
- `Final Excel dashboard/` – Excel file containing PivotTables and dashboard

