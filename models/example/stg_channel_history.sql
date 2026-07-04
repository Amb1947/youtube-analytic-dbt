{{ config(materialized='view') }}

select
    timestamp as snapshot_at,
    channel_id,
    title,
    published_at,
    view_count,
    subscriber_count,
    video_count
from {{ source('staging', 'channel_history_external') }}
