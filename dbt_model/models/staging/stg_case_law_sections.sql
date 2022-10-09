select
  case_number,
  statute_code
from {{source('source', 'case_law_sections')}}