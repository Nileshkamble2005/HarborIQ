-- Q1. Prepare KPI data for the Power BI dashboard.

SELECT
    COUNT(*) AS total_shipments,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT carrier_name) AS total_carriers,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue,
    ROUND(AVG(shipment_value_usd),2) AS average_shipment_value,
    ROUND(SUM(total_delay_penalty_usd),2) AS total_delay_penalty
FROM shipments;

-- Q2. Prepare carrier performance data for Power BI.

SELECT
    carrier_name,
    COUNT(*) AS total_shipments,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue,
    ROUND(AVG(delay_duration_hours),2) AS average_delay_hours
FROM shipments
GROUP BY carrier_name
ORDER BY total_revenue DESC;

-- Q3. Prepare customer performance data for Power BI.

SELECT
    c.company_name,
    c.country,
    c.credit_tier,
    COUNT(s.shipment_id) AS total_shipments,
    ROUND(SUM(s.shipment_value_usd),2) AS total_revenue
FROM customers c
JOIN shipments s
ON c.customer_id = s.customer_id
GROUP BY
    c.company_name,
    c.country,
    c.credit_tier
ORDER BY total_revenue DESC;

-- Q4. Prepare port performance data for Power BI.

SELECT
    origin_port,
    COUNT(*) AS total_shipments,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY origin_port
ORDER BY total_shipments DESC;

-- Q5. Prepare monthly shipment trend data for Power BI.

SELECT
    MONTH(departure_timestamp) AS shipment_month,
    COUNT(*) AS total_shipments,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY MONTH(departure_timestamp)
ORDER BY shipment_month;
