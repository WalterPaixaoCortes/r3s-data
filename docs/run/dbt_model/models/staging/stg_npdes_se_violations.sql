
  
    

  create  table "postgres"."staging"."stg_npdes_se_violations__dbt_tmp"
  as (
    SELECT npdes_id,
       npdes_violation_id,
       violation_type_code,
       violation_desc,
       case when coalesce(single_event_violation_date,'') = '' then null
       else substr(single_event_violation_date,7) || '-' || substr(single_event_violation_date,1,2) || '-' || substr(single_event_violation_date,4,2) || ' 00:00:00'
  end as single_event_violation_date,
       single_event_agency_type_code,
       rnc_detection_desc,
       case when coalesce(rnc_resolution_date,'') = '' then null
       else substr(rnc_resolution_date,7) || '-' || substr(rnc_resolution_date,1,2) || '-' || substr(rnc_resolution_date,4,2) || ' 00:00:00'
  end as rnc_resolution_date
  FROM "postgres"."source"."npdes_se_violations"
  );
  