create  table staging."stg_case_enforcement_type"
      as
        select
  case_number,
  enf_type_desc
from source."case_enforcement_type"
