# Financial Fraud and Anomaly Detection

## Project Overview
This project aims to detect fraudulent financial transactions and identify anomalies in transaction patterns. By leveraging data cleaning techniques, exploratory data analysis (EDA), and SQL-based querying, the project provides insights into fraudulent behaviors and risk factors associated with financial activities.

## Key Features
*   **Data Cleaning & Preprocessing**: Systematic cleaning of transaction datasets, handling missing values, and engineering risk-related features.
*   **Exploratory Data Analysis (EDA)**: Comprehensive visualizations to understand the distribution of fraud, transaction amounts, and category-wise fraud patterns.
*   **Anomaly Detection via Risk Flags**: Implementation of various risk indicators such as:
    *   `unusual_amount_flag`: Identifies transactions with significantly high amounts.
    *   `velocity_flag`: Detects rapid successions of transactions.
    *   `location_change_flag`: Highlights transactions occurring in different locations in a short span.
    *   `night_transaction_flag`: Flags transactions occurring during unusual hours.
*   **SQL-Based Business Insights**: SQL scripts to calculate total transaction volumes, average amounts, and identify top-spending customers.

## Technologies Used
*   **Python**: Primary language for data processing and analysis.
*   **Pandas**: For data manipulation and cleaning.
*   **Matplotlib & Seaborn**: For generating insightful visualizations.
*   **SQL**: For database-level data analysis and reporting.
*   **Jupyter Notebooks**: For interactive development and documentation.

## Project Structure
```text
├── Datasets/                 # Raw and processed datasets (CSV, XLSX)
│   ├── fraud_detection_elite_v3.csv
│   ├── fraud_detection_v4.csv
│   └── ...
├── Python Report/            # Jupyter Notebooks for Analysis
│   ├── Data_Clean_v3.ipynb   # Cleaning and Feature Engineering (V3)
│   ├── Data_Clean_v4.ipynb   # Cleaning and Analysis (V4)
│   ├── Fraud_Visualizations.ipynb
│   ├── Fraud_Visualizations2.ipynb
│   └── ...
├── SQLReport/                # SQL Scripts for Insights
│   └── set1.sql
└── README.md                 # Project Documentation
```

## Datasets
The project utilizes datasets containing transactional data with features such as:
*   `transaction_id`, `user_id`, `amount`
*   `transaction_type` (transfer, withdrawal, payment)
*   `merchant_category`, `location`, `device_type`
*   `is_fraud` (Target variable)

## Getting Started
1.  **Environment Setup**: Ensure you have Python installed along with the required libraries (`pandas`, `matplotlib`, `seaborn`, `numpy`).
2.  **Run Analysis**: Open the Jupyter notebooks in the `Python Report/` directory to see the data cleaning and visualization steps.
3.  **SQL Queries**: Use the scripts in `SQLReport/` with your preferred SQL database to extract business insights from the cleaned data.

## Results and Insights
*   Fraudulent transactions often exhibit higher average amounts compared to legitimate ones.
*   Specific categories (e.g., 'es_transportation', 'electronics') may show higher fraud frequencies.
*   Risk flags are effective initial indicators for manual or automated fraud review processes.
