select
  case_number,
  program_desc
from {{source('source', 'case_programs')}}