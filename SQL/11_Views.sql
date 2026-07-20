-- Q1. Create a view to display complete shipment details.

CREATE VIEW vw_shipment_details AS
SELECT
    shipment_id,
    customer_id,
    carrier_name,
    origin_port,
    destination_port,
    shipment_value_usd,
    status,
    late_arrival_flag
FROM shipments;

-- Q2. Create a view to display customer revenue.

CREATE VIEW vw_customer_revenue AS
SELECT
    customer_id,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY customer_id;

-- Q3. Create a view to display carrier performance.

CREATE VIEW vw_carrier_performance AS
SELECT
    carrier_name,
    COUNT(*) AS total_shipments,
    ROUND(SUM(shipment_value_usd),2) AS total_revenue
FROM shipments
GROUP BY carrier_name;

-- Q4. Create a view to display delayed shipments.

CREATE VIEW vw_delayed_shipments AS
SELECT
    shipment_id,
    carrier_name,
    customer_id,
    origin_port,
    destination_port,
    delay_duration_hours,
    total_delay_penalty_usd
FROM shipments
WHERE late_arrival_flag = 'Yes';

-- Q5. Display all records from the created views.

SELECT * FROM vw_shipment_details;

SELECT * FROM vw_customer_revenue;

SELECT * FROM vw_carrier_performance;

SELECT * FROM vw_delayed_shipments;