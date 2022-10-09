create  table staging."stg_case_pollutants"
      as
        select
  case_number,
  pollutant_desc
from source."case_pollutants"
