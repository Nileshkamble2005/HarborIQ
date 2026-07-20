-- Q1. How many shipments are recorded in the database?

SELECT COUNT(*) AS Total_Shipments
FROM shipments;

-- Q2. What are the different shipment statuses?

SELECT DISTINCT status
FROM shipments;

-- Q3. How many shipments belong to each shipment status?

SELECT
    status,
    COUNT(*) AS Total_Shipments
FROM shipments
GROUP BY status
ORDER BY Total_Shipments DESC;

-- Q4. Which cargo types are transported most frequently?

SELECT
    cargo_type,
    COUNT(*) AS Total
FROM shipments
GROUP BY cargo_type
ORDER BY Total DESC;

-- Q5. Which container types are used most frequently?

SELECT
    container_type,
    COUNT(*) AS Total
FROM shipments
GROUP BY container_type
ORDER BY Total DESC;

-- Q6. Which origin countries have the highest number of shipments?

SELECT
    origin_country,
    COUNT(*) AS Shipments
FROM shipments
GROUP BY origin_country
ORDER BY Shipments DESC
LIMIT 10;

-- Q7. Which destination countries receive the highest number of shipments?

SELECT
    destination_country,
    COUNT(*) AS Shipments
FROM shipments
GROUP BY destination_country
ORDER BY Shipments DESC
LIMIT 10;

-- Q8. How many shipments were damaged during transportation?

SELECT
    is_damaged,
    COUNT(*) AS Total
FROM shipments
GROUP BY is_damaged;

-- Q9. How many shipments arrived late?

SELECT
    late_arrival_flag,
    COUNT(*) AS Total
FROM shipments
GROUP BY late_arrival_flag;

-- Q10. What is the average shipment value?

SELECT
    ROUND(AVG(shipment_value_usd), 2) AS Average_Shipment_Value_USD
FROM shipments;