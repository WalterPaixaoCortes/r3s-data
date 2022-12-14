
  
    

  create  table "postgres"."staging"."stg_frs_naics_codes__dbt_tmp"
  as (
    

select distinct 
    trim(registry_id) as fac_id,
    trim(pgm_sys_id) as prg_id,
    trim(pgm_sys_acnrm) as prg_acronym,
    trim(naics_code) as prg_naics_code
from "postgres"."source"."frs_naics_codes"
  );
  