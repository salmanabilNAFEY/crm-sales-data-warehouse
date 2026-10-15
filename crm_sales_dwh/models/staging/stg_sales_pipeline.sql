
{{ config(materialized='view') }}

SELECT
    opportunity_id,
    sales_agent,
    product,
    account,
    deal_stage,
    engage_date,
    close_date,
    CAST(close_value AS DECIMAL(12,2)) AS close_value
FROM read_csv_auto('{{ var("data_path", "D:/depi project/crm_sales_data_warehouse/data") }}/sales_pipeline.csv')