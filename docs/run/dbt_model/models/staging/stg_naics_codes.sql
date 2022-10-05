

  create  table "postgres"."staging"."stg_naics_codes__dbt_tmp"
  as (
    select  distinct trim(naics_code) as naics_code, 
                 trim(naics_desc) as naics_desc
  from "postgres"."source"."npdes_naics"
  );