# 🚀 Data Engineering & Analytics Engineering Project (AWS + Snowflake + dbt)

## 📌 Overview
This project demonstrates a modern, end-to-end data platform combining data engineering and analytics engineering practices. It showcases how raw data can be ingested, transformed, and modelled into a scalable analytics layer that supports business decision-making.

The solution follows industry-standard ELT patterns and emphasises data quality, modular design, and stakeholder-ready outputs.

---

## 🏗 Architecture
- Data ingestion: CSV files ingested into AWS S3 (data lake - conceptual)
- Raw layer: Snowflake (RAW schema) storing ingested data
- Staging layer: Cleaned and standardised data models using dbt
- Marts layer: Business-ready fact and dimension tables
- Semantic layer: Trusted metrics and reusable datasets
- BI layer: Power BI / Tableau dashboards for stakeholders

---

## ⚙️ Tech Stack
- AWS S3 (Data Lake – conceptual architecture)
- Snowflake (Cloud Data Warehouse)
- dbt (Data Transformation & Modelling)
- SQL (CTEs, Window Functions, Aggregations)
- Power BI / Tableau (Data Visualisation)
- GitHub (Version Control & Collaboration)

---

## 📊 Key Use Cases
- Top 10 customers (using window functions and ranking)
- Top-selling products
- Revenue vs Net Sales analysis
- Discount and coupon impact analysis
- Monthly sales trends
- Customer segmentation (New vs Returning)

---

## 🧱 Data Modelling Approach

### 🔹 Staging Layer
- Cleaned and standardised raw data
- Applied data type casting and business logic
- Renamed columns for consistency
- Handled nulls and default values

### 🔹 Marts Layer
- Built fact table: `fct_orders`
- Created aggregations for business reporting
- Ensured metrics are consistent and reusable
- Applied dimensional modelling principles

---

## 🧠 Advanced SQL Concepts Used
- Common Table Expressions (CTEs)
- Window Functions (RANK, ROW_NUMBER)
- Aggregations and groupings
- Case-based transformations
- Data cleaning and standardisation

---

## 📁 Project Structure
models/
- raw/ # Source definitions
- staging/ # Cleaned & standardised data
- marts/ # Business-ready models (fact & aggregates)

---

## 🚀 How to Run

### 1. Install dependencies
```bash
pip install dbt-snowflake
dbt run
dbt run
---

## Generate documentation
dbt docs generate
dbt docs serve

## 🧭 Architecture Diagram

```mermaid
flowchart LR
    A[CSV Data Source] --> B[AWS S3 - Data Lake]
    B --> C[Snowflake RAW Layer]
    C --> D[dbt Staging Models]
    D --> E[dbt Marts Models]
    E --> F[Semantic Layer]
    F --> G[Power BI / Tableau Dashboards]

