select
  case_number,
  pollutant_desc
from {{source('source', 'case_pollutants')}}