select
  case_number,
  violation_type_code,
  violation_type_desc
from {{source('source', 'case_violations')}}

