This project builds a simple CRM Sales Data Warehouse pipeline.

The main goal is to transform raw CRM sales data from CSV files into clean and structured warehouse models using dbt, store the final data in DuckDB, and automate the workflow using Apache Airflow and Docker.

---

## Tools & Technologies

| Tool | Usage |
|------|-------|
| Python | Data engineering environment |
| dbt | Data transformation and testing |
| DuckDB | Data warehouse database |
| Apache Airflow | Pipeline orchestration |
| Docker | Running Airflow environment |

---

# Data Pipeline Architecture


CSV Files
    |
    v
dbt Staging Models
    |
    v
dbt Mart Models
    |
    v
DuckDB Warehouse
    |
    v
Airflow Automation

---

# Project Structure


crm_sales_data_warehouse
├── airflow
│   ├── dags
│   │   └── crm_sales_dbt_pipeline.py
│   ├── Dockerfile
│   └── docker-compose.yaml
│
├── crm_sales_dwh
│   ├── models
│   │   ├── staging
│   │   │   ├── stg_accounts.sql
│   │   │   ├── stg_products.sql
│   │   │   ├── stg_sales_pipeline.sql
│   │   │   └── stg_sales_teams.sql
│   │   │
│   │   └── marts
│   │       ├── dim_accounts.sql
│   │       ├── dim_products.sql
│   │       ├── dim_sales_teams.sql
│   │       ├── fct_sales_pipeline.sql
│   │       └── schema.yml
│   │
│   └── dbt_project.yml
│
├── data
│   ├── accounts.csv
│   ├── products.csv
│   ├── sales_pipeline.csv
│   ├── sales_teams.csv
│   └── data_dictionary.csv
│
├── docs
│   └── schema images
│
└── dev.duckdb

---

# Data Sources

The project uses CRM CSV files:

- Accounts
- Products
- Sales Pipeline
- Sales Teams
- Data Dictionary

---

# dbt Transformation Layer

## Staging Models

The staging layer prepares raw data for analysis.

Models:

- stg_accounts
- stg_products
- stg_sales_pipeline
- stg_sales_teams


## Mart Models

The mart layer contains the final warehouse tables.

Models:

- dim_accounts
- dim_products
- dim_sales_teams
- fct_sales_pipeline

---

# Data Warehouse Schema

The warehouse follows a dimensional modeling approach.

## Dimension Tables

- dim_accounts
- dim_products
- dim_sales_teams


## Fact Table

- fct_sales_pipeline


### Schema Diagram

(Add schema image here)

---

# Data Quality Testing

Data quality tests were created using dbt `schema.yml`.

Tests include:

- not_null tests
- unique tests


Test Result:


PASS=8
ERROR=0
WARN=0

---

# Airflow Pipeline

The Airflow DAG name:


crm_sales_dbt_pipeline

Pipeline flow:


dbt_run
   |
   v
dbt_test


## dbt_run

Responsible for building all dbt models and creating warehouse tables.


## dbt_test

Responsible for running data quality checks.

---

# Execution Screenshots

## Airflow DAG

(Add Airflow screenshot here)


## dbt Run

(Add dbt run screenshot here)


## dbt Test

(Add dbt test screenshot here)


---

# Database

The project uses:


DuckDB

Database file:


dev.duckdb

---

# Final Result

The pipeline successfully:

✅ Loads CRM source data  
✅ Transforms data using dbt  
✅ Creates warehouse models  
✅ Runs automated quality tests  
✅ Executes through Airflow and Docker  
