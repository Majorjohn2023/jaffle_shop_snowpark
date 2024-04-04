{{ config(materialized='table') }}

WITH source_data AS (
    SELECT
        *
    FROM {{ ref('user_data_csv') }}
)

SELECT
    id,
    cast(name as json) as name_json,
    address,
    cast(contact_info as json) as contact_info_json,
    cast(preferences as json) as preferences_json,
    misc
FROM source_data