{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

with raw_data as (
select
  case_number,
   {{ capitalize('pollutant_desc')}} as pollutant_desc
from {{source('source', 'case_pollutants')}}
)
select
  distinct case_number,
  case when pollutant_desc = 'None' 
    then 'Not Informed' 
    else pollutant_desc 
  end as pollutant_desc
from raw_data  