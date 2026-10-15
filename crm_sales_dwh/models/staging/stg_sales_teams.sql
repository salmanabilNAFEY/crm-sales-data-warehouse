
{{ config(materialized='view') }}

SELECT
    sales_agent,
    manager,
    regional_office
FROM read_csv_auto('{{ var("data_path", "D:/depi project/crm_sales_data_warehouse/data") }}/sales_teams.csv')