# Retail Business Performance & Profitability Analysis

## Overview

This project analyzes retail transactional data to evaluate business performance, profitability, inventory efficiency, and seasonal sales trends. The objective was to identify high-performing product categories, understand seasonal demand patterns, and generate actionable business recommendations using data-driven insights.

## Tools & Technologies

* **SQL (MySQL Workbench)** – Data analysis and business metric calculations
* **Python (Pandas, NumPy)** – Data cleaning and preprocessing
* **Tableau** – Interactive dashboard development
* **CSV Dataset** – Retail transaction records

## Project Workflow

### 1. Data Cleaning (Python)

* Imported and inspected the dataset using Pandas.
* Checked data types, missing values, and duplicates.
* Identified 187 missing records and handled them using median imputation.
* Validated data consistency and exported a cleaned dataset for analysis.

### 2. Data Analysis (SQL)

Performed business-focused analysis including:

* Category-wise profitability analysis
* Sub-category performance analysis
* Seasonal revenue and profit analysis
* Profit margin calculations
* Inventory and profitability evaluation

### 3. Dashboard Development (Tableau)

Created an interactive dashboard featuring:

* Total Revenue KPI
* Total Profit KPI
* Average Profit Margin KPI
* Units Sold KPI
* Profit by Season
* Profit by Category
* Profit by Sub-Category
* Inventory Days vs Profitability Analysis
* Interactive Filters (Region, Category, Season)

## Key Findings

* **Furniture** achieved the highest profit margin (25.23%).
* **Clothing** recorded the lowest profit margin (22.93%).
* **Winter** generated the highest revenue.
* **Summer** produced the highest overall profit.
* **Snacks** and **Dairy** emerged as strong-performing sub-categories.
* Correlation between Inventory Days and Profit was **-0.007**, indicating virtually no relationship between inventory holding duration and profitability.

## Business Recommendations

* Increase focus on high-profit categories and sub-categories.
* Optimize inventory planning ahead of Winter demand peaks.
* Review pricing and discount strategies for Clothing products.
* Expand successful Furniture product lines.
* Prioritize category-level profitability analysis over inventory duration alone.

## Outcome

The project demonstrates how SQL, Python, and Tableau can be combined to transform raw retail data into actionable business insights, enabling data-driven decision-making for profitability improvement, inventory optimization, and seasonal planning.

This README is suitable for your GitHub repository, internship submission, or project folder.
