SELECT 
    COUNT(*) as total_channels,
    COUNT(DISTINCT category) as unique_categories
FROM {{ ref('stg_channel_details') }}
