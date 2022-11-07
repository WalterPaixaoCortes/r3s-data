
  
    

  create  table "postgres"."staging"."stg_case_enforcement_conclusion_pollutants__dbt_tmp"
  as (
    

with raw_data as (
select
  case_number,
  initcap(coalesce(pollutant_name, 'Not Informed')) as pollutant_name,
  cast(coalesce(average_annual_value,'0') as float) as average_annual_value,
  coalesce(pollutant_unit_code, 'N/A') as pollutant_unit_code,
  coalesce(media_code,'N/A') as media_code
from "postgres"."source"."case_enforcement_conclusion_pollutants"
)
select
  distinct case_number,
  case when pollutant_name = 'None' 
        then 'Not Informed' 
  else pollutant_name 
  end as pollutant_name,
  average_annual_value,
  pollutant_unit_code,
  media_code
from raw_data
  );
  