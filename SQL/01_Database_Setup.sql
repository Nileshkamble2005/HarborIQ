-- Create the HarborIQ database.
CREATE DATABASE harboriq;

-- Select the HarborIQ database for use.
USE harboriq;

-- Count the total number of shipments.
SELECT COUNT(*) FROM shipments;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM carriers;
SELECT COUNT(*) FROM ports;

DESCRIBE shipments;
DESCRIBE customers;
DESCRIBE carriers;
DESCRIBE ports;