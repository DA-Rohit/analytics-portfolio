# Google Merchandise E-commerce Performance Analysis

This project analyzes one year of Google Merchandise Store e-commerce data to understand overall performance, product and category dynamics, and the underlying drivers of revenue and volume.

## Business Objective
To assess how revenue is generated across geographies, products, and categories, identify concentration risks, and understand whether the business is driven by premium products or high-volume, low-priced items.

## Data Source
Google Analytics 360 sample dataset (publicly available via BigQuery), containing session-level and product-level e-commerce data for the Google Merchandise Store (Aug 2016 – July 2017).

## Analytical Approach
SQL (BigQuery) was used to extract and aggregate session-level and product-level datasets. Power BI was used for data modeling, exploratory analysis, and building an interactive executive dashboard with KPI tracking and product/category deep dives.

## Interactive Report Walkthrough (40s)
A short walkthrough demonstrating report interactivity, including month, device, and product category slicers across both report pages.

▶ Watch the walkthrough (unlisted): [YouTube link](https://youtu.be/HSm7gUBOiBo)

## Key Insights

- **Severe geographic concentration:** ~96% of total revenue comes from the United States, indicating high dependence on a single market and limited international contribution.

- **Product portfolio is not concentrated:** The top 10 products contribute only ~19% of total revenue across ~405 products, confirming a long-tail business rather than reliance on a few hero products.

- **Category-level concentration is high:** The top 5 product categories account for ~84% of total revenue, showing that while individual products are diversified, category-level dependence remains significant.

- **Apparel is the primary revenue anchor:** Apparel drives both high revenue and high volume, making it the most strategically important category.

- **Office products drive volume, not value:** Office-related items show extremely high unit volumes but low revenue per unit, indicating their role as repeat, low-priced, utility purchases rather than margin drivers.

- **Revenue is volume-driven, not premium-driven:** Scatter analysis of price vs. quantity shows most products cluster at low prices and low quantities, with very few high-priced items contributing meaningfully to revenue.

- **Clear seasonality exists only for apparel:** Apparel shows distinct revenue peaks (notably around December and April), while other major categories remain relatively flat and predictable throughout the year.

- **Broad assortment with limited strategic impact:** Many categories sit in a low-revenue, low-volume cluster, suggesting a wide catalog that supports brand presence but contributes marginally to overall performance.

*Product & Category analysis excludes unresolved category values (~5.3k rows out of 23.7k). Findings are directional.*

## Repository Structure
- `/sql` – SQL queries used to build analytical datasets
- `/powerbi` – Power BI report (.pbix)

## Tools Used
- SQL (BigQuery)
- Power BI
