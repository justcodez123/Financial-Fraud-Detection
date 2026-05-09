CREATE DATABASE FinanceDB;

USE FinanceDB;

SELECT * FROM dbo.data_v3;

/* DRAWING OUT INSIGHTS FROM THE DATA*/
-- 1. Calculate the total number of transactions and the total amount for each transaction type
SELECT transaction_type, COUNT(*) AS total_transactions, ROUND(SUM(amount),4) AS total_amount 
FROM dbo.data_v3
GROUP BY transaction_type;

-- 2. Calculate the average transaction amount for each transaction type
SELECT transaction_type, ROUND(AVG(amount),4) AS average_amount
FROM dbo.data_v3
GROUP BY transaction_type;

-- 3. Identify the top 5 customers with the highest total transaction amounts
SELECT customer_id, ROUND(SUM(amount),4) AS total_amount
FROM dbo.data_v3
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 5;

-- 4. Calculate the total number of transactions and the total amount for each month
SELECT MONTH(transaction_date) AS month, COUNT(*) AS total_transactions, ROUND(SUM(amount),4) AS total_amount
FROM dbo.data_v3
GROUP BY MONTH(transaction_date)
ORDER BY month;

-- 5. Identify the transaction type with the highest average transaction amount
SELECT transaction_type, ROUND(AVG(amount),4) AS average_amount
FROM dbo.data_v3
GROUP BY transaction_type
ORDER BY average_amount DESC
LIMIT 1;



