
  
    create  table staging."stg_case_pollutants"
      as
        

with raw_data as (
select
  case_number,
   coalesce(pollutant_desc, 'Not Informed') as pollutant_desc
from source."case_pollutants"
)
select
  case_number,
  case when pollutant_desc = 'None' 
    then 'Not Informed' 
    else pollutant_desc 
  end as pollutant_desc
from raw_data

  