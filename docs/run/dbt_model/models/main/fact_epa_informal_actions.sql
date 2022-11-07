
  
    

  create  table "postgres"."main"."fact_epa_informal_actions__dbt_tmp"
  as (
    select 
       prg_id,
       fac_id,
       activity_type_code,
       enf_type_code,
       enf_type_desc,
       enf_achieved_date,
       enf_statute
  from "postgres"."staging"."stg_epa_informal_enforcement_actions"
  );
  