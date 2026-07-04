{{ config(materialized='table') }}

select
    channel_id,
    channel_name,
    category
from {{ ref('stg_channel_details') }}
