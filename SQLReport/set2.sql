/* SQL Queries for Financial Fraud Detection - Dataset v4 */

USE FinanceDB;

-- 1. Overview of Transactions
SELECT TOP 10 FROM transactions_v4 ;

-- 2. Fraud Distribution (Total Count and Percentage)
SELECT 
    fraud, 
    COUNT(*) AS total_transactions,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions_v4), 2) AS percentage
FROM transactions_v4
GROUP BY fraud;

-- 3. Top 10 Merchants by Fraudulent Transactions
SELECT 
    merchant, 
    COUNT(*) AS fraud_count
FROM transactions_v4
WHERE fraud = 1
GROUP BY merchant
ORDER BY fraud_count DESC
LIMIT 10;

-- 4. Category-wise Analysis: Transaction Count, Total Amount, and Fraud Rate
SELECT 
    category, 
    COUNT(*) AS total_transactions,
    ROUND(SUM(amount), 2) AS total_amount,
    SUM(fraud) AS fraud_cases,
    ROUND(AVG(fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v4
GROUP BY category
ORDER BY fraud_rate_percentage DESC;

-- 5. Gender-wise Fraud Analysis
SELECT 
    gender, 
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_cases,
    ROUND(AVG(fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v4
GROUP BY gender
ORDER BY fraud_rate_percentage DESC;

-- 6. Age Group Analysis for Fraud
SELECT 
    age, 
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_cases,
    ROUND(AVG(fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v4
GROUP BY age
ORDER BY age;

-- 7. Average Transaction Amount: Fraud vs. Legitimate
SELECT 
    fraud, 
    ROUND(AVG(amount), 2) AS average_amount
FROM transactions_v4
GROUP BY fraud;
