
  
    

  create  table "postgres"."staging"."stg_npdes_qncr_history__dbt_tmp"
  as (
    SELECT npdes_id,
       yearqtr,
       hlrnc,
       nume90q,
       numcvdt,
       numsvcd,
       numpsch
  FROM "postgres"."source"."npdes_qncr_history"
  );
  