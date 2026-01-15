-- Purpose: Validate the presence, structure, and fields of product-level purchase data
--          within transaction hits.
-- Data source: bigquery-public-data.google_analytics_sample.ga_sessions_*
-- Notes: Exploratory query to understand product purchase granularity;
--        results not directly used in Power BI visuals.


SELECT
  p.v2ProductName,
  p.v2ProductCategory,
  p.productQuantity,
  p.productRevenue / 1000000 AS product_revenue_usd

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS h,
UNNEST(h.product) AS p

WHERE _TABLE_SUFFIX BETWEEN '20170701' AND '20170801'
AND p.productRevenue IS NOT NULL

LIMIT 50;
