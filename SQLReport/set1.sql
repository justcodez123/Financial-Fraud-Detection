/* SQL Queries for Financial Fraud Detection - Dataset v3 */

USE FinanceDB;

-- 1. Overview of Transactions
SELECT * FROM transactions_v3 LIMIT 10;

-- 2. Total transactions and total amount for each transaction type
SELECT 
    transaction_type, 
    COUNT(*) AS total_transactions, 
    ROUND(SUM(amount), 2) AS total_amount 
FROM transactions_v3
GROUP BY transaction_type;

-- 3. Top 5 Users with the highest total transaction amounts
SELECT 
    user_id, 
    ROUND(SUM(amount), 2) AS total_amount
FROM transactions_v3
GROUP BY user_id
ORDER BY total_amount DESC
LIMIT 5;

-- 4. Fraud Rate by Merchant Category
SELECT 
    merchant_category, 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(AVG(is_fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v3
GROUP BY merchant_category
ORDER BY fraud_rate_percentage DESC;

-- 5. Impact of Failed Attempts on Fraud
SELECT 
    failed_attempts, 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(AVG(is_fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v3
GROUP BY failed_attempts
ORDER BY failed_attempts;

-- 6. Foreign Transactions and Fraud
SELECT 
    is_foreign_transaction, 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(AVG(is_fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v3
GROUP BY is_foreign_transaction;

-- 7. Unusual Amount Flags vs Actual Fraud
SELECT 
    unusual_amount_flag, 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(AVG(is_fraud) * 100, 2) AS fraud_rate_percentage
FROM transactions_v3
GROUP BY unusual_amount_flag;
