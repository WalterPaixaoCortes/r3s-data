
  
    

  create  table "postgres"."staging"."stg_npdes_perm_feature_coords__dbt_tmp"
  as (
    SELECT external_permit_nmbr as npdes_id,
       perm_feature_nmbr,
       perm_feature_id
  FROM "postgres"."source"."npdes_perm_feature_coords"
  );
  