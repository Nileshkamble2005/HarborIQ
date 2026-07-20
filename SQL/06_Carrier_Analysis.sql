-- Q1. How many shipments has each carrier handled?

SELECT
    carrier_name,
    COUNT(*) AS total_shipments
FROM shipments
GROUP BY carrier_name
ORDER BY total_shipments DESC;

-- Q2. Which carrier generated the highest shipment value?

SELECT
    carrier_name,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY carrier_name
ORDER BY total_revenue DESC;

-- Q3. What is the average shipment value for each carrier?

SELECT
    carrier_name,
    ROUND(AVG(shipment_value_usd),2) AS average_shipment_value
FROM shipments
GROUP BY carrier_name
ORDER BY average_shipment_value DESC;

-- Q4. How many delayed shipments does each carrier have?

SELECT
    carrier_name,
    COUNT(*) AS delayed_shipments
FROM shipments
WHERE late_arrival_flag = 'Yes'
GROUP BY carrier_name
ORDER BY delayed_shipments DESC;

-- Q5. What is the total delay penalty charged for each carrier?

SELECT
    carrier_name,
    ROUND(SUM(total_delay_penalty_usd),2) AS total_delay_penalty
FROM shipments
GROUP BY carrier_name
ORDER BY total_delay_penalty DESC;

-- Q6. What is the average delay duration for each carrier?

SELECT
    carrier_name,
    ROUND(AVG(delay_duration_hours),2) AS average_delay_hours
FROM shipments
GROUP BY carrier_name
ORDER BY average_delay_hours DESC;

-- Q7. How many damaged shipments were handled by each carrier?

SELECT
    carrier_name,
    COUNT(*) AS damaged_shipments
FROM shipments
WHERE is_damaged = 'Yes'
GROUP BY carrier_name
ORDER BY damaged_shipments DESC;

-- Q8. Which carriers transported refrigerated containers?

SELECT DISTINCT
    carrier_name
FROM shipments
WHERE container_type = 'Refrigerated';

-- Q9. Which carriers transported the highest number of hazardous cargo shipments?

SELECT
    carrier_name,
    COUNT(*) AS hazardous_shipments
FROM shipments
WHERE cargo_type = 'Hazardous'
GROUP BY carrier_name
ORDER BY hazardous_shipments DESC;

-- Q10. Which carrier has the highest on-time delivery count?

SELECT
    carrier_name,
    COUNT(*) AS on_time_shipments
FROM shipments
WHERE late_arrival_flag = 'No'
GROUP BY carrier_name
ORDER BY on_time_shipments DESC;