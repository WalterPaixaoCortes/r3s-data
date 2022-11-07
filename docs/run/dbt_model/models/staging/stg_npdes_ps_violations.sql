
  
    

  create  table "postgres"."staging"."stg_npdes_ps_violations__dbt_tmp"
  as (
    SELECT npdes_id,
       npdes_violation_id,
       violation_type_code,
       violation_desc,
       schedule_event_desc,
       rnc_detection_desc,
       case when coalesce(rnc_detection_date,'') = '' then null
       else substr(rnc_detection_date,7) || '-' || substr(rnc_detection_date,1,2) || '-' || substr(rnc_detection_date,4,2) || ' 00:00:00'
  end as rnc_detection_date,
       case when coalesce(rnc_resolution_date,'') = '' then null
       else substr(rnc_resolution_date,7) || '-' || substr(rnc_resolution_date,1,2) || '-' || substr(rnc_resolution_date,4,2) || ' 00:00:00'
  end as rnc_resolution_date
  FROM "postgres"."source"."npdes_ps_violations"
  );
  