CREATE DATABASE retail_analysis;
USE retail_analysis;
SELECT COUNT(*)
FROM retail_data_clean;
# Profitability analysis
SELECT
SUM(revenue) AS total_revenue,
SUM(profit) AS total_profit
FROM retail_data_clean;
# Profit By category
SELECT
category,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(profit),2) AS profit,
ROUND((SUM(profit)/SUM(revenue))*100,2) AS profit_margin
FROM retail_data_clean
GROUP BY category
ORDER BY profit DESC;
#Profit By sub-category
SELECT
sub_category,
ROUND(SUM(profit),2) AS total_profit
FROM retail_data_clean
GROUP BY sub_category
ORDER BY total_profit DESC;
#Identify profit-draining categories
SELECT
sub_category,
ROUND(SUM(profit),2) AS total_profit
FROM retail_data_clean
GROUP BY sub_category;

SELECT
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_data_clean
GROUP BY sub_category
ORDER BY total_profit ASC;

SELECT
    category,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(revenue)) * 100, 2) AS profit_margin
FROM retail_data_clean
GROUP BY category
ORDER BY profit_margin ASC;
# Identify seasonal behaviour
SELECT
    season,
    ROUND(SUM(revenue),2) AS total_revenue,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(revenue))*100,2) AS profit_margin
FROM retail_data_clean
GROUP BY season
ORDER BY total_profit DESC;

SELECT
    sub_category,
    ROUND(AVG(inventory_days),2) AS avg_inventory_days,
    ROUND(SUM(profit),2) AS total_profit
FROM retail_data_clean
GROUP BY sub_category
ORDER BY avg_inventory_days DESC;
