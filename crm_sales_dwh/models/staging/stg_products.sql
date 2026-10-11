
{{ config(materialized='view') }}

SELECT
    product,
    series,
    sales_price
FROM read_csv_auto('D:/depi project/crm_sales_data_warehouse/data/products.csv')
