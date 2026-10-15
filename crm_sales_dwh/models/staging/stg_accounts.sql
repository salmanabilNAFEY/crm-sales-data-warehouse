{{ config(materialized='view') }}

SELECT
    account,
    sector,
    year_established,
    revenue,
    employees,
    office_location,
    subsidiary_of
FROM read_csv_auto('{{ var("data_path", "D:/depi project/crm_sales_data_warehouse/data") }}/accounts.csv')