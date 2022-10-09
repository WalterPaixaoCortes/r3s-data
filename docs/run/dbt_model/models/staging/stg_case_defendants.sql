create  table staging."stg_case_defendants"
      as
        select
  case_number,
  defendant_name
from source."case_defendants"
