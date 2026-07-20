-- Q1. How many shipments has each customer made?

SELECT
    customer_id,
    COUNT(*) AS total_shipments
FROM shipments
GROUP BY customer_id
ORDER BY total_shipments DESC;

-- Q2. Which customers generated the highest shipment value?

SELECT
    customer_id,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Q3. What is the average shipment value for each customer?

SELECT
    customer_id,
    ROUND(AVG(shipment_value_usd),2) AS avg_shipment_value
FROM shipments
GROUP BY customer_id
ORDER BY avg_shipment_value DESC;

-- Q4. Which companies generate the highest revenue?

SELECT c.customer_id,
    c.company_name,
    c.country,
    ROUND(SUM(s.shipment_value_usd),2) AS revenue
FROM customers c
JOIN shipments s
ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.company_name,
    c.country
ORDER BY revenue DESC;

-- Q5. How many shipments belong to each customer credit tier?

SELECT
    c.credit_tier,
    COUNT(s.shipment_id) AS total_shipments
FROM customers c
JOIN shipments s
ON c.customer_id = s.customer_id
GROUP BY c.credit_tier
ORDER BY total_shipments DESC;

-- Q6. Which customer credit tier generates the highest revenue?

SELECT
    c.credit_tier,
    ROUND(SUM(s.shipment_value_usd),2) AS total_revenue
FROM customers c
JOIN shipments s
ON c.customer_id = s.customer_id
GROUP BY c.credit_tier
ORDER BY total_revenue DESC;

-- Q7. Which registered customers have not made any shipments?
SELECT
    c.customer_id,
    c.company_name
FROM customers c
LEFT JOIN shipments s
ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;