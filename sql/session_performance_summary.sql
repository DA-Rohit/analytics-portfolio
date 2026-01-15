-- Purpose: Aggregate session-level performance metrics (sessions, transactions, revenue)
--          by date, device category, and country for high-level trend and conversion analysis.
-- Data source: bigquery-public-data.google_analytics_sample.ga_sessions_*
-- Notes: Used for Power BI Page 1 (Executive overview)


SELECT
  PARSE_DATE('%Y%m%d', date) AS session_date,
  device.deviceCategory AS device_category,
  geoNetwork.country AS country,

  COUNT(1) AS sessions,
  SUM(IFNULL(totals.transactions, 0)) AS transactions,
  SUM(IFNULL(totals.totalTransactionRevenue, 0)) / 1000000 AS revenue_usd

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'

GROUP BY
  session_date,
  device_category,
  country
