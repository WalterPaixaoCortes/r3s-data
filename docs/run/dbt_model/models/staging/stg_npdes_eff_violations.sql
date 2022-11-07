
  create view "postgres"."staging"."stg_npdes_eff_violations__dbt_tmp" as (
    

SELECT npdes_id,
       activity_id,
       npdes_violation_id,
       perm_feature_nmbr,
       monitoring_location_code,
       dmr_form_value_id,
       limit_value_standard_units,
       violation_type_code,
       violation_type_desc,
       violation_desc,
       parameter_desc,
       standard_unit_desc,
       case when coalesce(monitoring_period_end_date,'') = '' then null
       else substr(monitoring_period_end_date,7) || '-' || substr(monitoring_period_end_date,1,2) || '-' || substr(monitoring_period_end_date,4,2) || ' 00:00:00'
  end as monitoring_period_end_date,
       nmbr_of_report,
       limit_id,
       value_type_code,
       rnc_detection_desc,
       case when coalesce(rnc_detection_date,'') = '' then null
       else substr(rnc_detection_date,7) || '-' || substr(rnc_detection_date,1,2) || '-' || substr(rnc_detection_date,4,2) || ' 00:00:00'
  end as rnc_detection_date,
       case when coalesce(rnc_resolution_date,'') = '' then null
       else substr(rnc_resolution_date,7) || '-' || substr(rnc_resolution_date,1,2) || '-' || substr(rnc_resolution_date,4,2) || ' 00:00:00'
  end as rnc_resolution_date,
       statistical_base_code
  FROM "postgres"."source"."npdes_eff_violations"
  );