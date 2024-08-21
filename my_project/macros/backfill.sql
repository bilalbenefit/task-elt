{% macro backfill(model_name, start_date, end_date) %}
  {{ config(
      materialized='incremental',
      unique_key=unique_key
  ) }}

  select * 
  from {{ ref(model_name) }}
  where date_column >= '{{ start_date }}'
    and date_column <= '{{ end_date }}'
{% endmacro %}
