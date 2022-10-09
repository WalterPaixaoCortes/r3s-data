select
  case_number,
  enf_type_desc
from {{source('source', 'case_enforcement_type')}}
