# Olist Operational Performance Analysis

## Project Overview

An end-to-end data analytics project focused on identifying operational performance patterns and potential bottlenecks in an e-commerce operation.

The project combines **Excel, SQL Server, Power BI, and DAX** to analyze order volume, revenue, delivery performance, seller performance, and customer review scores.

## Business Question

**Where does operational performance deteriorate, and what factors are associated with it?**

## Dataset

The project uses the **Brazilian Olist e-commerce dataset**, containing approximately 100,000 orders and multiple related tables covering orders, order items, reviews, sellers, customers, products, and payments.

## Tools

* Excel
* SQL Server
* Power BI
* DAX

## Analysis Areas

* Order and revenue performance
* Delivery time and on-time delivery
* Seller delivery bottlenecks
* Review score vs. delivery time
* Monthly operational trends

## Key Findings

The dataset contains 99,441 orders and approximately 13.59M in item revenue.
Average delivery time is approximately 12.5 days.
Approximately 91.9% of delivered orders were delivered on time.
Delivery performance varies significantly across sellers, with some high-volume sellers showing longer average delivery times.
Orders with lower review scores are associated with longer delivery times.
Delivery performance declined during parts of late 2017 and early 2018, with longer delivery times and lower on-time delivery rates observed during this period.
Business Insights
Sellers with higher delivery times can be investigated as potential operational bottlenecks.
Delivery performance should be monitored together with customer review scores because longer delivery times are associated with lower review scores.
Monthly monitoring of delivery time and on-time delivery can help identify periods requiring further operational investigation.

## Project Structure

```text
Olist-Operational-Performance-Analysis/
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_kpi_analysis.sql
│   └── 03_bottleneck_analysis.sql
│
├── operational_performance.pbix
│
└── README.md
```
## Buisness Recommendations
Based on the analysis, the following actions could be considered:

Investigate high-delay sellers
Review high-volume sellers with longer delivery times to identify potential fulfillment or logistics-related issues.
Monitor delivery and customer satisfaction together
Since longer delivery times are associated with lower review scores, these metrics should be monitored together.
Establish monthly operational monitoring
Track average delivery time and on-time delivery rate regularly to identify periods of declining performance.
Prioritize operational bottlenecks
Evaluate seller volume together with delivery performance to focus improvement efforts on bottlenecks with meaningful operational impact.


## Note

The dataset represents historical e-commerce transactions and is used for analytical and portfolio purposes.
