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

* Average delivery time is approximately **12.5 days**.
* Approximately **91.9% of delivered orders were delivered on time**.
* Delivery performance varied considerably across sellers.
* Lower review scores were associated with longer delivery times.
* Delivery performance deteriorated noticeably during parts of late 2017 and early 2018.

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

## Note

The dataset represents historical e-commerce transactions and is used for analytical and portfolio purposes.
