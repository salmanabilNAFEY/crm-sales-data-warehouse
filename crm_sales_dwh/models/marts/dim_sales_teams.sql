{{ config(materialized='table') }}

SELECT
    sales_agent,
    manager,
    regional_office
FROM {{ ref('stg_sales_teams') }}