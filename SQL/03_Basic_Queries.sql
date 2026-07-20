SELECT COUNT(*)
FROM shipments
WHERE shipment_id IS NULL;

SELECT shipment_id, COUNT(*)
FROM shipments
GROUP BY shipment_id
HAVING COUNT(*) > 1;

SELECT COUNT(DISTINCT customer_id)
FROM shipments;

SELECT DISTINCT status
FROM shipments;

DESCRIBE shipments;
DESCRIBE customers;
DESCRIBE carriers;
DESCRIBE ports;