
-- WEEK 4 DATABASE ASSIGNMENT
-- Advanced SQL Queries and Aggregations
-- Database: MySQL

-- QUESTION 1
-- Total payment amount for each payment date.
-- Display the latest 5 payment dates.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2
-- Average credit limit of each customer.
-- Display customer name, country and average credit limit.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3
-- Total price of products ordered.
-- Display product code, quantity ordered and total price.

SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4
-- Highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
