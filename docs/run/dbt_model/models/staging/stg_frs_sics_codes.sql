
  
    

  create  table "postgres"."staging"."stg_frs_sics_codes__dbt_tmp"
  as (
    select  
    trim(pgm_sys_id) as prg_id,
    trim(registry_id) as fac_id,
    trim(pgm_sys_acnrm) as prg_acronym,
    trim(sic_code) as prg_sics_code
from "postgres"."source"."frs_sic_codes"
  );
  