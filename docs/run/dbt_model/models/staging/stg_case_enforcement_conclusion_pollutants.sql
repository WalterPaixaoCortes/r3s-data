create  table staging."stg_case_enforcement_conclusion_pollutants"
      as
        select
  case_number,
  pollutant_name,
  average_annual_value,
  pollutant_unit_code,
  media_code
from source."case_enforcement_conclusion_pollutants"
