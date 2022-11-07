
  
    

  create  table "postgres"."staging"."stg_npdes_violation_enforcements__dbt_tmp"
  as (
    SELECT npdes_violation_id,
       violation_desc,
       activity_id,
       activity_type_code
  FROM "postgres"."source"."npdes_violation_enforcements"
  );
  