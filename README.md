# pharma-sales-analytics
End-to-end SQL + Python + Power BI project analyzing pharma sales and inventory risk

# Pharma Sales & Inventory Analytics

An end-to-end data analytics project that analyzes pharmaceutical sales, 
regional performance, and inventory risk using a combination of Python, 
SQL Server, and Power BI. The project simulates a real business problem 
faced by pharma companies — tracking sales performance while identifying 
revenue loss due to expired stock.

## Problem Statement

Pharmaceutical distributors deal with thousands of orders across multiple 
regions and drug categories every month. Without proper analytics, 
companies often fail to identify slow-moving inventory approaching 
expiry, resulting in direct revenue loss. This project builds a complete 
pipeline to surface these insights through an interactive dashboard.

## Tech Stack & Pipeline

**Python (Data Preparation)** → **SQL Server (Analysis)** → **Power BI (Visualization)**

- **Python (Pandas, NumPy):** Generated and cleaned a realistic pharma 
  sales dataset of 2,000 transactions across 5 drug categories and 5 
  regions.
- **SQL Server (SSMS):** Used window functions (RANK, PARTITION BY) to 
  perform region-wise ranking, distributor performance analysis, and 
  expired-stock revenue calculations.
- **Power BI:** Built a 4-page interactive dashboard covering Overview, 
  Sales Trend, Inventory Risk, and Distributor Performance.

## Key Insights

- Identified drugs with the highest revenue locked in expired stock, 
  highlighting inventory wastage risk.
- Ranked top-selling drugs by region to support demand planning.
- Compared distributor performance to identify top revenue-generating 
  partners.
- Tracked month-on-month sales trends to spot seasonal demand shifts.

## Dashboard Pages

1. **Overview** — Key KPIs: Total Revenue, Total Orders, Units Sold, 
   Category-wise Revenue split
2. **Sales Trend** — Monthly revenue trend and region-wise sales comparison
3. **Inventory Risk** — Drugs nearing expiry and expired-stock revenue loss
4. **Distributor Performance** — Revenue ranking across distributors

## Files in this Repository

| File | Description |
|---|---|
| `Pharma_Sales_Analytics.ipynb` | Data generation, cleaning, and exploratory analysis |
| `pharma_sales.csv` | Dataset used across SQL and Power BI |
| `pharma_analysis.sql` | SQL queries used for analysis (window functions, ranking, aggregations) |
| `Pharma_Sales_Dashboard.pbix` | Power BI dashboard file |
| `screenshots/` | Dashboard preview images |

## Author

**Laxmikant Pendam**  
Transitioning into Data Analytics/Data Science with a focus on the 
pharmaceutical industry domain.
