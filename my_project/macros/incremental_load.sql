{% macro backfill(model_name) %}
  {{ config(
      materialized='full_refresh'
  ) }}

  select * from {{ ref(model_name) }}
{% endmacro %}
