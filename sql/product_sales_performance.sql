-- Purpose: Extract and aggregate product-level purchase data by unnesting transaction hits,
--          computing revenue, quantity sold, and effective average price per product
--          and product category.
-- Data source: bigquery-public-data.google_analytics_sample.ga_sessions_*
-- Notes: Used for Power BI Page 2 (Product & Category Performance Analysis)


SELECT
  PARSE_DATE('%Y%m%d', date) AS transaction_date,
 
  p.v2ProductName      AS product_name,
  p.v2ProductCategory  AS product_category,
 

  SUM(p.productQuantity) AS total_quantity,
  SUM(p.productRevenue) / 1000000 AS revenue_usd,

  SAFE_DIVIDE(SUM(p.productRevenue), SUM(p.productQuantity)) / 1000000  AS avg_product_price


FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS h,
UNNEST(h.product) AS p

WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170731'
AND p.productRevenue IS NOT NULL

GROUP BY
  transaction_date,
  product_name,
  product_category
