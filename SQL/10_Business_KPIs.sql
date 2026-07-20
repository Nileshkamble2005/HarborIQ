-- Q1. What are the overall business KPIs for shipment operations?

SELECT
    COUNT(*) AS total_shipments,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue,
    ROUND(AVG(shipment_value_usd),2) AS average_shipment_value,
    ROUND(SUM(total_delay_penalty_usd),2) AS total_delay_penalty
FROM shipments;

-- Q2. Which carrier has the highest on-time delivery percentage?

SELECT
    carrier_name,
    ROUND(
        SUM(CASE WHEN late_arrival_flag = 'No' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS on_time_delivery_percentage
FROM shipments
GROUP BY carrier_name
ORDER BY on_time_delivery_percentage DESC;

-- Q3. Which customer generated the highest average shipment value?

SELECT
    customer_id,
    ROUND(AVG(shipment_value_usd),2) AS average_shipment_value
FROM shipments
GROUP BY customer_id
ORDER BY average_shipment_value DESC
LIMIT 10;

-- Q4. Which country generated the highest shipment revenue?

SELECT
    origin_country,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY origin_country
ORDER BY total_revenue DESC;

-- Q5. Which cargo type generated the highest shipment revenue?

SELECT
    cargo_type,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY cargo_type
ORDER BY total_revenue DESC;
