# Customer Value Management (CVM) & RFM Analysis Pipeline

This project implements an end-to-end data pipeline for retail customer analytics, focusing on segmentation, churn prediction, and statistical hypothesis testing (A/B testing).

## Tech Stack
* **Python**: `pandas`, `scipy` (stats), `seaborn` (viz).
* **SQL**: `pandasql` for ETL and feature engineering.
* **DevOps**: `Docker` for environment reproducibility.

## Data Source
The dataset used in this project is the Online Retail Data Set, sourced from Kaggle.

**Source:** Kaggle - https://www.kaggle.com/datasets/tunguz/online-retail

**Description:** This is a transnational data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.

## Project Structure
* `data/`: Raw and processed transaction data.
* `notebooks/`: Jupyter notebook with the full analysis.
* `scripts/`: Modular SQL queries for RFM and Churn analysis.
* `Dockerfile`: Container configuration.

## Key Analysis Phases
1. **RFM Segmentation**: Customers were divided into 5 quintiles based on Recency, Frequency, and Monetary value.
2. **A/B Testing**: Used T-tests to evaluate the impact of marketing campaigns on customer spending.
3. **Churn Analysis**: Calculated a 90-day churn threshold and identified segments at risk.

## Interactive Dashboard:
You can explore the interactive RFM & Churn analysis results here:
View Looker Studio Dashboard - https://lookerstudio.google.com/reporting/7c37e485-97db-4d70-805c-cfd4870ad278

## How to Run
1. Build the image:
   ```bash
   docker build -t cvm-analysis .
2. Run the container:
    docker run -p 8888:8888 cvm-analysis