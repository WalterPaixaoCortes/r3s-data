{% macro capitalize(column) -%}
  {%- if target.name == 'sqlite' -%}
      coalesce({{column}}, 'Not Informed')
  {%- else -%}
      initcap(coalesce({{column}}, 'Not Informed'))
  {%- endif -%}
{%- endmacro %}