{% macro format_date(column) -%}
  case when ifnull({{column}},'') = '' then null
       else substr({{column}},7) || '-' || substr({{column}},1,2) || '-' || substr({{column}},4,2) || ' 00:00:00'
  end
{%- endmacro %}