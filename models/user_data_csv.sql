{{ config(materialized='view') }}

SELECT
    *
FROM {{ ref('user_data_seed') }}