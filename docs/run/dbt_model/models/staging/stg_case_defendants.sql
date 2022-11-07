
  
    

  create  table "postgres"."staging"."stg_case_defendants__dbt_tmp"
  as (
    

select
  distinct case_number,
  initcap(coalesce(defendant_name, 'Not Informed')) as defendant_name
from "postgres"."source"."case_defendants"
  );
  