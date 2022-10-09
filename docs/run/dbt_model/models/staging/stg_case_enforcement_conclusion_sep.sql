create  table staging."stg_case_enforcement_conclusion_sep"
      as
        select
  case_number,
  sep_category_desc,
  sep_amt
from source."case_enforcement_conclusion_sep"
