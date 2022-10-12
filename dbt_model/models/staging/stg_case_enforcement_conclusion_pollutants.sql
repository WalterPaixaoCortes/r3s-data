{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

with raw_data as (
select
  case_number,
  initcap(coalesce(pollutant_name, 'Not Informed')) as pollutant_name,
  cast(average_annual_value as float) as average_annual_value,
  coalesce(pollutant_unit_code, 'N/A') as pollutant_unit_code,
  coalesce(media_code,'N/A') as media_code
from {{source('source', 'case_enforcement_conclusion_pollutants')}}
)
select
  case_number,
  case when pollutant_name = 'None' 
        then 'Not Informed' 
  else pollutant_name 
  end as pollutant_name,
  average_annual_value,
  pollutant_unit_code,
  media_code
from raw_data
