select
  case_number,
  sep_category_desc,
  sep_amt
from {{source('source', 'case_enforcement_conclusion_sep')}}