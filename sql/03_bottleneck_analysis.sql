-- Olist Operational Performance Analysis
-- 03 - Bottleneck Analysis

-- 1. Seller delivery performance
SELECT TOP 20
    oi.seller_id,
    COUNT(DISTINCT oi.order_id) AS Order_Count,
    AVG(
        DATEDIFF(
            DAY,
            o.order_purchase_timestamp,
            o.order_delivered_customer_date
        )
    ) AS Avg_Delivery_Days
FROM dbo.olist_order_items_dataset AS oi
INNER JOIN dbo.olist_orders_dataset AS o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY oi.seller_id
HAVING COUNT(DISTINCT oi.order_id) >= 100
ORDER BY Avg_Delivery_Days DESC;


-- 2. Review score vs delivery time
SELECT
    r.review_score,
    COUNT(*) AS Review_Count,
    AVG(
        DATEDIFF(
            DAY,
            o.order_purchase_timestamp,
            o.order_delivered_customer_date
        )
    ) AS Avg_Delivery_Days
FROM dbo.olist_order_reviews_dataset AS r
INNER JOIN dbo.olist_orders_dataset AS o
    ON r.order_id = o.order_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY r.review_score
ORDER BY r.review_score;


-- 3. Monthly delivery performance
SELECT
    YEAR(order_purchase_timestamp) AS Order_Year,
    MONTH(order_purchase_timestamp) AS Order_Month,
    AVG(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS Avg_Delivery_Days
FROM dbo.olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
GROUP BY
    YEAR(order_purchase_timestamp),
    MONTH(order_purchase_timestamp)
ORDER BY
    Order_Year,
    Order_Month;
