create  table staging."stg_case_programs"
      as
        select
  case_number,
  program_desc
from source."case_programs"
