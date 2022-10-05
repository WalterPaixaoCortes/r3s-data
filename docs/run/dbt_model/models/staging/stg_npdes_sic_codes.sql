

  create  table "postgres"."staging"."stg_npdes_sic_codes__dbt_tmp"
  as (
    select  sic_code, 
        sic_desc, 
        primary_indicator_flag,
        now() as load_date
  from "postgres"."source"."npdes_sics"
  );