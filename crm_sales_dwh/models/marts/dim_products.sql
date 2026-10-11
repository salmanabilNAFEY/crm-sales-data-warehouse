{{ config(materialized='table') }}

SELECT
    product,
    series,
    sales_price
FROM {{ ref('stg_products') }}