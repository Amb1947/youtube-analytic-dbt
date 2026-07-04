{{ config(materialized='table') }}

select
    -- foreign keys (joins to dimensions)
    channel_id,
    date(snapshot_at) as snapshot_date,

    -- measures (the numbers we want to analyze)
    view_count,
    subscriber_count,
    video_count
from {{ ref('stg_channel_history') }}
