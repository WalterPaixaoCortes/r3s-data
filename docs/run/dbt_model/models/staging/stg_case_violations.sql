create  table staging."stg_case_violations"
      as
        select
  case_number,
  violation_type_code,
  violation_type_desc
from source."case_violations"
