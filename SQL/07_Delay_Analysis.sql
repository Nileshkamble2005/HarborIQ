-- Q1. How many shipments were delivered on time and how many were delayed?

SELECT
    late_arrival_flag,
    COUNT(*) AS total_shipments
FROM shipments
GROUP BY late_arrival_flag;

-- Q2. What percentage of shipments were delayed?

SELECT
    ROUND(
        (SUM(CASE WHEN late_arrival_flag = 'Yes' THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*), 2
    ) AS delayed_percentage
FROM shipments;

-- Q3. Which carriers have the highest number of delayed shipments?

SELECT
    carrier_name,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY carrier_name
ORDER BY delayed_shipments DESC;

-- Q4. Which origin ports experience the highest number of shipment delays?

SELECT
    origin_port,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY origin_port
ORDER BY delayed_shipments DESC;

-- Q5. Which destination ports receive the highest number of delayed shipments?

SELECT
    destination_port,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY destination_port
ORDER BY delayed_shipments DESC;

-- Q6. Which cargo types experience the highest number of shipment delays?

SELECT
    cargo_type,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY cargo_type
ORDER BY delayed_shipments DESC;

-- Q7. Which container types have the highest number of delayed shipments?

SELECT
    container_type,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY container_type
ORDER BY delayed_shipments DESC;

-- Q8. What is the average delay duration for delayed shipments?

SELECT
    ROUND(AVG(delay_duration_hours),2) AS average_delay_hours
FROM shipments
WHERE late_arrival_flag = 'Yes';

-- Q9. Which shipment experienced the longest delay?

SELECT
    shipment_id,
    delay_duration_hours
FROM shipments
ORDER BY delay_duration_hours DESC
LIMIT 1;

-- Q10. What is the total delay penalty charged due to delayed shipments?

SELECT
    ROUND(SUM(total_delay_penalty_usd),2) AS total_delay_penalty
FROM shipments
WHERE late_arrival_flag = 'Yes';

-- Q11. Which carriers incurred the highest total delay penalty?

SELECT
    carrier_name,
    ROUND(SUM(total_delay_penalty_usd),2) AS total_delay_penalty
FROM shipments
GROUP BY carrier_name
ORDER BY total_delay_penalty DESC;

-- Q12. Which customers experienced the highest number of delayed shipments?

SELECT
    customer_id,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY customer_id
ORDER BY delayed_shipments DESC;

-- Q13. Which countries have the highest number of delayed shipments?

SELECT
    destination_country,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY destination_country
ORDER BY delayed_shipments DESC;

-- Q14. What is the average delay duration for each carrier?

SELECT
    carrier_name,
    ROUND(AVG(delay_duration_hours),2) AS average_delay_hours
FROM shipments
GROUP BY carrier_name
ORDER BY average_delay_hours DESC;


-- Q15. Which shipments were delayed by more than 24 hours?

SELECT
    shipment_id,
    carrier_name,
    origin_port,
    destination_port,
    delay_duration_hours
FROM shipments
WHERE delay_duration_hours > 24
ORDER BY delay_duration_hours DESC;