# Financial Fraud and Anomaly Detection - Project Documentation

## Project Overview
This project focuses on detecting financial fraud and anomalies using two different datasets (v3 and v4). The workflow involves data cleaning, exploratory data analysis (EDA), visual analysis, and SQL-based insights.

## Tasks Completed

### 1. Data Cleaning & Analysis
- **Dataset v3 (`fraud_detection_elite_v3.csv`)**:
    - Handled missing values by replacing them with mean (numerical) and mode (categorical).
    - Performed statistical analysis on fraud counts, foreign transactions, failed attempts, and velocity flags.
    - Exported cleaned data to `data_v3.csv`.
- **Dataset v4 (`fraud_detection_v4.csv`)**:
    - Cleaned string fields by removing extra quotes.
    - Removed redundant columns like ZIP codes.
    - Analyzed fraud distribution and category-specific fraud rates.
    - Exported cleaned data to `data_v4.csv`.

### 2. Notebook Integration
- Integrated `Fraud_Visualizations.ipynb` into `Data_Clean_v3.ipynb`.
- Integrated `Fraud_Visualizations2.ipynb` into `Data_Clean_v4.ipynb`.
- These integrated notebooks now contain both the cleaning logic and a comprehensive suite of visualizations, including:
    - Target variable distribution.
    - Transaction amount analysis (histograms and boxplots).
    - Correlation heatmaps.
    - Categorical analysis (Merchant, Gender, Age).
    - Temporal trends (for v4).

### 3. SQL Query Development
- Created/Updated SQL scripts in the `SQLReport` folder:
    - **`set1.sql`**: Tailored for the v3 dataset. Includes queries for transaction types, user behavior, fraud rates by category, and the impact of failed attempts.
    - **`set2.sql`**: Tailored for the v4 dataset. Includes queries for fraud distribution, top merchants, gender/age analysis, and category-wise insights.

## Key Insights

### Dataset v3 Insights:
- **Fraud Rate**: Approximately 3.87% of transactions are flagged as fraud.
- **Foreign Transactions**: A significant majority (9506 out of 12000) are foreign, which correlates with fraud detection logic.
- **Failed Attempts**: High correlation between multiple failed attempts and fraudulent activity.
- **Unusual Amounts**: 271 transactions flagged for unusual amounts relative to the user's average.

### Dataset v4 Insights:
- **Imbalance**: Highly imbalanced dataset with only ~1.21% fraud cases.
- **High-Risk Categories**: 'es_leisure' and 'es_travel' show exceptionally high fraud rates (95% and 79% respectively).
- **Amount Correlation**: Fraudulent transactions have a much higher average amount (~531) compared to legitimate ones (~32).
- **Merchant Hotspots**: Identified top 10 merchants frequently involved in fraudulent transactions.

## File Structure Update
- `Python Report/Data_Clean_v3.ipynb`: Integrated cleaning + visualizations for v3.
- `Python Report/Data_Clean_v4.ipynb`: Integrated cleaning + visualizations for v4.
- `SQLReport/set1.sql`: SQL queries for v3.
- `SQLReport/set2.sql`: SQL queries for v4.
- `Documentation.md`: This file.
