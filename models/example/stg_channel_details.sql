{{ config(materialized='view') }}

select
    channel_id,
    channel_name,
    category
from {{ source('staging', 'channel_details') }}
