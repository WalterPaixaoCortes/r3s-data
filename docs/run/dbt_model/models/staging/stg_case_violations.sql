

  create  table "postgres"."staging"."stg_case_violations__dbt_tmp"
  as (
    

select
  case_number,
  violation_type_code,
  violation_type_desc
from "postgres"."source"."case_violations"
  );