{% snapshot channel_details_snapshot %}
  {{
    config(
      target_schema='snapshots',
      unique_key='channel_id',
      strategy='timestamp',
      updated_at='updated_at'
    )
  }}

  select *
  from {{ source('staging', 'channel_details') }}

{% endsnapshot %}
