

  create  table "postgres"."staging"."stg_case_pollutants__dbt_tmp"
  as (
    

select
  case_number,
  pollutant_desc
from "postgres"."source"."case_pollutants"
  );