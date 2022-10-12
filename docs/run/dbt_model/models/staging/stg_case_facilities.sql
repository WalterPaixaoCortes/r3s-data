

  create  table "postgres"."staging"."stg_case_facilities__dbt_tmp"
  as (
    

select
  case_number,
  registry_id,
  city,
  state_code,
  zip,
  primary_sic_code,
  primary_naics_code
from "postgres"."source"."case_facilities"
  );