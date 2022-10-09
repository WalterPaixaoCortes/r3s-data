select
  case_number,
  relief_desc
from {{source('source', 'case_relief_sought')}}