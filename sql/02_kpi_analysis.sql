-- Olist Operational Performance Analysis
-- 02 - KPI Analysis

-- Total Orders
SELECT
    COUNT(DISTINCT order_id) AS Total_Orders
FROM dbo.olist_orders_dataset;


-- Total Revenue
SELECT
    SUM(price) AS Total_Revenue
FROM dbo.olist_order_items_dataset;


-- Average Order Value
SELECT
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS Average_Order_Value
FROM dbo.olist_orders_dataset AS o
INNER JOIN dbo.olist_order_items_dataset AS oi
    ON o.order_id = oi.order_id;


-- Average Delivery Days
SELECT
    AVG(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS Average_Delivery_Days
FROM dbo.olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;
