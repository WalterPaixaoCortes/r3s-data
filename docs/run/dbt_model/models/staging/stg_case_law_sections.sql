create  table staging."stg_case_law_sections"
      as
        select
  case_number,
  statute_code
from source."case_law_sections"
