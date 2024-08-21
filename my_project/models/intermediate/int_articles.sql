{{ config(
    materialized='incremental',
    unique_key='article_id'
) }}

with source_data as (
    select *
    from {{ ref('stg_articles') }}
    {% if var('start_date', none) and var('end_date', none) %}
        where updated_at between '{{ var('start_date') }}' and '{{ var('end_date') }}'
    {% endif %}
)

, incremental_data as (
    {% if is_incremental() %}
        select *
        from source_data
        where updated_at > (
            select max(updated_at) from {{ this }}
        )
    {% else %}
      select * 
      from source_data
    {% endif %}
)

select * from incremental_data
