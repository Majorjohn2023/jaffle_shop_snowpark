{{ config(materialized='view') }}

SELECT
    *
FROM {{ source('user_data', 'user_data_csv') }}