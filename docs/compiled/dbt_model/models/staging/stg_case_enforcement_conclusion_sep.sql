

select 
  distinct 
    case_number, 
    unnest(string_to_array(sep_category_desc, '/')) AS sep_category_desc, 
    cast(coalesce(sep_amt,'0') as float) as sep_amt
from "postgres"."source"."case_enforcement_conclusion_sep"