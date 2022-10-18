
  
    

  create  table "postgres"."staging"."stg_case_pollutants__dbt_tmp"
  as (
    

with raw_data as (
select
  case_number,
   initcap(coalesce(pollutant_desc, 'Not Informed')) as pollutant_desc
from "postgres"."source"."case_pollutants"
)
select
  case_number,
  case when pollutant_desc = 'None' 
    then 'Not Informed' 
    else pollutant_desc 
  end as pollutant_desc
from raw_data
  );
  