{% macro amount_to_float(column) -%}
  {%- if target.name == 'sqlite' -%}
  case when instr({{column}}, 'billion') = 0 then 
    cast(replace(replace({{column}},'$',''),' million','') as float) * 1000000 
  else 
    cast(replace(replace({{column}},'$',''),' billion','') as float) * 1000000000 
  end  
  {%- else -%}
  case when strpos({{column}}, 'billion') = 0 then 
    cast(replace(replace({{column}},'$',''),' million','') as float) * 1000000 
  else 
    cast(replace(replace({{column}},'$',''),' billion','') as float) * 1000000000 
  end  
  {%- endif -%}
{%- endmacro %}