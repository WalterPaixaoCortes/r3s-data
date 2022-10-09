select
  case_number,
  defendant_name
from {{source('source', 'case_defendants')}}