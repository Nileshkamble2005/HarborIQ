SELECT COUNT(*) AS Total_Shipments
FROM shipments;
SELECT COUNT(*) AS Total_Customers
FROM customers;
SELECT COUNT(*) AS Total_Carriers
FROM carriers;
SELECT COUNT(*) AS Total_Ports
FROM ports;


-- Display all records from the Shipments table.

SELECT *
FROM shipments
LIMIT 10;
SELECT *
FROM customers
LIMIT 10;
SELECT *
FROM carriers
LIMIT 10;
SELECT *
FROM ports
LIMIT 10;