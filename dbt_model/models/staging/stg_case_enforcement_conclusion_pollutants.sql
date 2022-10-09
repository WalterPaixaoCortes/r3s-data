select
  case_number,
  pollutant_name,
  average_annual_value,
  pollutant_unit_code,
  media_code
from {{source('source', 'case_enforcement_conclusion_pollutants')}}