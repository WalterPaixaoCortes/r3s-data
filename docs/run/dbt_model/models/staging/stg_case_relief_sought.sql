
  
    

  create  table "postgres"."staging"."stg_case_relief_sought__dbt_tmp"
  as (
    

select
  case_number,
  relief_desc
from "postgres"."source"."case_relief_sought"
  );
  