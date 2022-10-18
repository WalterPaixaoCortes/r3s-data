
  
    

  create  table "postgres"."staging"."stg_case_law_sections__dbt_tmp"
  as (
    

select
  case_number,
  statute_code
from "postgres"."source"."case_law_sections"
  );
  