
  
    

  create  table "postgres"."staging"."stg_case_facilities__dbt_tmp"
  as (
    

select
  distinct cas.case_number,
  cas.registry_id,
  cas.city,
  cas.state_code,
  cas.zip,
  cas.primary_sic_code,
  cas.primary_naics_code,
  fac.fac_name
from "postgres"."source"."case_facilities" cas
  inner join "postgres"."staging"."stg_frs_facilities" fac
  on cas.registry_id = fac.fac_id
  );
  