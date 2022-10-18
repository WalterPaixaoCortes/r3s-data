
  
    

  create  table "postgres"."staging"."stg_case_enforcement_type__dbt_tmp"
  as (
    

select
  case_number,
  enf_type_desc
from "postgres"."source"."case_enforcement_type"
  );
  