-- Q1. Which customers generated a shipment value greater than the average shipment value?

SELECT
    customer_id,
    ROUND(SUM(shipment_value_usd), 2) AS total_revenue
FROM shipments
GROUP BY customer_id
HAVING SUM(shipment_value_usd) >
(
    SELECT AVG(shipment_value_usd)
    FROM shipments
)
ORDER BY total_revenue DESC;

-- Q2. Rank carriers based on their total shipment value.

SELECT
    carrier_name,
    ROUND(SUM(shipment_value_usd), 2) AS total_revenue,
    DENSE_RANK() OVER (ORDER BY SUM(shipment_value_usd) DESC) AS carrier_rank
FROM shipments
GROUP BY carrier_name;

-- Q3. Categorize shipments as High, Medium, or Low value using CASE.

SELECT
    shipment_id,
    shipment_value_usd,
    CASE
        WHEN shipment_value_usd >= 80000 THEN 'High Value'
        WHEN shipment_value_usd >= 40000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS shipment_category
FROM shipments;

-- Q4. Which customers have made more than 100 shipments?

SELECT
    customer_id,
    COUNT(*) AS total_shipments
FROM shipments
GROUP BY customer_id
HAVING COUNT(*) > 100
ORDER BY total_shipments DESC;

-- Q5. Display the top 5 highest-value shipments.

SELECT
    shipment_id,
    customer_id,
    carrier_name,
    shipment_value_usd
FROM shipments
ORDER BY shipment_value_usd DESC
LIMIT 5;