

  create  table "postgres"."staging"."stg_case_programs__dbt_tmp"
  as (
    

select
  case_number,
  program_desc
from "postgres"."source"."case_programs"
  );